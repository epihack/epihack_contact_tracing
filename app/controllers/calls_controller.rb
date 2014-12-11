class CallsController < ApplicationController
  def index
    c = Call.where(call_sid: params[:CallSid]).first_or_initialize
    c.from = params[:From]
    c.save!
    render nothing: true
  end

  def create
    c = Call.where(call_sid: params[:CallSid]).first_or_initialize
    c.from = params[:From]
    c.save!
  end
end
