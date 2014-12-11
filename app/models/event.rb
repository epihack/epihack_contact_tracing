class Event < ActiveRecord::Base
	belongs_to :location, :foreign_key => :location
  has_many :event_statuses
  belongs_to :report
  attr_accessible :date_reported

  def self.get_events_in_order(order)
   self.order("date_reported #{order}")
  end

  def location_name
   self.location.get_name
  end

  def get_location_from_resourcemap

   params = { :GP_id => self.report.farmer_id }
   response = self.get_site_information(params)

   if(response.code == 200)
    result = JSON.parse response.response_body
    return result["sites"]
   end
  end

  def potential_impacted_areas
   params = { :GP_id => self.report.farmer_id }
   site = get_location_from_resourcemap
   proximity_params = {:lat => site.first["lat"],:lng => site.first["long"], :radius => "10km"}
   proximity_results = self.get_site_information(proximity_params)
   if (proximity_results.code == 200)
    sites = JSON.parse proximity_results.response_body
    return sites["sites"]
   end

  end

  def self.get_site_information (params)
   request = Typhoeus::Request.new(
     "#{ResourceMapConfig['url']}/api/collections/#{ResourceMapConfig['collection_id']}.json",
     method: :get,
     userpwd: "#{ResourceMapConfig['username']}:#{ResourceMapConfig['password']}",
     params: params
   )
   request.run
   response = request.response
  end

 #this function will have to be moved to locations
  def self.get_all_locations
   sites = Hash.new("Unknown")
   results =  self.get_site_information(" ")
   if(results.code == 200)
    sites_raw = JSON.parse results.response_body
    (sites_raw["sites"] || []).each do |site|
     sites[site["properties"]["GP_id"]] = site["name"]
    end
   end
   return sites
  end
end
