class LivesController < ApplicationController
  
  def index
  end

  def new
    @live = Live.new
    @artist_array = ["選択してください"]
    Artist.all.each do |a|
      @artist_array << a.name
    end
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
    params[:live].permit(:title, :date, :fee, :venue, :seat, :information)
  end

end
