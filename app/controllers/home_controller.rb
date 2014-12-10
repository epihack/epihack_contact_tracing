class HomeController < ApplicationController
 def index
  @events = Event.get_events_in_order("DESC")
 end
end
