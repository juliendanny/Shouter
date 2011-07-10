class ShoutsController < ApplicationController
  def index
    @shouts = Shout.order("created_at DESC")
    @shout = Shout.new
  end

  def create
    @shout = Shout.new(params[:shout])
    @shout.save
    redirect_to shouts_path, :notice => "Thanks for shouting!"
  end
end
