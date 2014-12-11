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
  	RestClient.get "#{ResourceMapConfig['url']}/api/collections/#{ResourceMapConfig['collection_id']}", {:params => {'GP_id' => self.location}}
  end

end
