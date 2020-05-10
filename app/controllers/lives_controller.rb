class LivesController < ApplicationController
  
  def index
  end

  def new
    @live = Live.new
  end

  def create
    @live = Live.new(item_params)
    if @live.save
      redirect_to root_path
    else
      redirect_to new_life_path
    end
  end

  private

  def item_params
    params[:live].permit(:title, :day, :fee, :venue, :seat, :information)
  end

end
