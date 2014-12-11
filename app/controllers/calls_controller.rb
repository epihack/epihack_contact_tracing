class CallsController < ApplicationController
  def create
    c = Calls.where(call_sid: params[:CallSid]).first_or_initialize
    c.from = params[:from]
    c.save!
  end
end
