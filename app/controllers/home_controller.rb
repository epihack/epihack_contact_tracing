class HomeController < ApplicationController

 before_filter :authenticate_user!
  def index
   @events = Event.get_events_in_order("DESC")
   @locations = Event.get_all_locations
  end


end
