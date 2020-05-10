class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
    @artist.members.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_path
    else
      redirect_to new_artist_path
    end
  end

  private

  def artist_params
    params[:artist].permit(:name, members_attributes: [:name, :_destroy, :id])
  end

end
