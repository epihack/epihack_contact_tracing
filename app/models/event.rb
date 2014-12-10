class Event < ActiveRecord::Base
 has_many :event_statuses
 set_primary_key :event_id
end
