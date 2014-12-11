class EventsController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@events = Event.all
  end

  def show 
  	@event = Event.find params[:id]
  	@site = @event.get_location_from_resourcemap
   @close_locations = @event.potential_impacted_areas
  end
end
