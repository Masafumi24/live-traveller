class LivesController < ApplicationController
  
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
    params[:live].permit(:title, :date, :fee, :venue, :seat, :information)
    # @punch.at_in = DateTime.new(
    #   params[:punch]["at_in(1i)"].to_i,
    #   params[:punch]["at_in(2i)"].to_i,
    #   params[:punch]["at_in(3i)"].to_i,
    #   params[:punch]["at_in(4i)"].to_i,
    #   params[:punch]["at_in(5i)"].to_i
    # )
  end

end
