class EventStatus < ActiveRecord::Base
 belongs_to :event, :foreign_key => :event_id
 attr_accessible :status_date, :status, :event_id

end
