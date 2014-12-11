class Event < ActiveRecord::Base

 belongs_to :location, :foreign_key => :location
 has_many :event_statuses
 attr_accessible :location, :description, :date_reported, :location_type

 def self.get_events_in_order(order)
   self.order("date_reported #{order}")
 end

 def location_name
   self.location.get_name
 end
end
