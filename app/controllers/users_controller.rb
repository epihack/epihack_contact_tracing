class UsersController < ApplicationController  
  before_filter :authenticate_user!

  def index
    
  end

  def show

  end

  def new
  	@user = User.new()
  end

  def create
    
  end

end