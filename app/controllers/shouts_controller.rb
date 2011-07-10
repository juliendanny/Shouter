class ShoutsController < ApplicationController
  before_filter :authorize
  
  def index
    @shouts = Shout.order("created_at DESC")
    @shout = Shout.new
  end

  def create
    @shout = Shout.new(params[:shout])
    @shout.user = current_user
    if @shout.save
      flash[:notice] = "Shout created."
    else
      flash[:failure] = "Shout can't be blank."
    end
    redirect_to root_path
  end
end
