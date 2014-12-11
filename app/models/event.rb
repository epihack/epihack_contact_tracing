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
    request = Typhoeus::Request.new(
       "#{ResourceMapConfig['url']}/api/collections/#{ResourceMapConfig['collection_id']}.json",
       method: :get,
       userpwd: "#{USER}:#{PASSWORD}",
       params: params
    )
    request.run
    response = request.response
    if(response.code == 200)
      result = JSON.parse response.response_body
      return result["site"]
    end
  end

end
