class CallsController < ApplicationController
  def create
    c = Calls.where(call_sid: params[:CallSid]).first_or_initialize
    c.from = params[:From]
    c.save!
  end
end
