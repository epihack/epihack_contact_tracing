class Event < ActiveRecord::Base

 has_many :event_statuses

 def self.get_events_in_order(order)
   self.order("date_reported #{order}")
 end

 def location_name
  ResctClient.post() 
 end
end
