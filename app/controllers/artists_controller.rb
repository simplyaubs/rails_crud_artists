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

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes!(artist_params)

    redirect_to artists_path
  end

    private
    def artist_params
      params.require(:artist).permit(:name, :album)
    end
end