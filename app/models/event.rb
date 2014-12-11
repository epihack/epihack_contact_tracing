class Event < ActiveRecord::Base
	belongs_to :location, :foreign_key => :location
  has_many :event_statuses
  belongs_to :report
  attr_accessible :date_reported

  USER, PASSWORD = 'epihactanzania@gmail.com', 'epihactz31'
  def self.get_events_in_order(order)
   self.order("date_reported #{order}")
  end

  def location_name
   self.location.get_name
  end

  def get_location_from_resourcemap
   params = { :GP_id => self.report.farmer_id }
   response = get_site_information(params)
   if(response.code == 200)
    result = JSON.parse response.response_body
    return result["site"]
   end
  end

  def potential_impacted_areas
   params = { :GP_id => self.report.farmer_id }
   result = get_site_information(params)
   if(result.code == 200)
    site = JSON.parse result.response_body
    proximity_params = {:lat => site["lat"],:lng => site["lng"], :radius => "10km"}
    proximity_results = get_site_information(proximity_params)

    if (proximity_results.code == 200)
     sites = JSON.parse proximity_results.response_body
    end
   end


  end

  def get_site_information (params)
   request = Typhoeus::Request.new(
     "#{ResourceMapConfig['url']}/api/collections/#{ResourceMapConfig['collection_id']}.json",
     method: :get,
     userpwd: "#{USER}:#{PASSWORD}",
     params: params
   )
   request.run
   response = request.response

  end
end
