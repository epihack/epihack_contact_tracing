class EventStatusesController < ApplicationController

 def create
  EventStatus.create({:event_id => params[:event_id], :status => params[:status], :status_date => DateTime.now()})
  redirect_to "/"
 end
end
