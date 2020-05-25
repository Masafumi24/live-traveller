class LivesController < ApplicationController
  before_action :set_user

  def index
  end

  def new
    @live = Live.new
  end

  def create
    @live = Live.new(live_params)
    if @live.save
      redirect_to root_path
    else
      redirect_to new_life_path
    end
  end

  private

  def live_params
    params[:live].permit(:title, :date, :fee, :venue, :seat, :information, :artist_id)
  end

end
