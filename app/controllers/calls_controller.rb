class CallsController < ApplicationController
  def index
    c = Calls.where(call_sid: params[:CallSid]).first_or_initialize
    c.from = params[:From]
    c.save!
  end

  def create
    c = Calls.where(call_sid: params[:CallSid]).first_or_initialize
    c.from = params[:From]
    c.save!
  end
end
