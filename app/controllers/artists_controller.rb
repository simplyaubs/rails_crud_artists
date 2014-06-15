class ArtistsController < ApplicationController

  def index
    @artist = Artist.new
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save

      redirect_to artists_path
    else
      render :index
    end
  end

    private
    def artist_params
      params.require(:artist).permit(:name, :album)
    end
end