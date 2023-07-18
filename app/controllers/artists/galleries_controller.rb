# app/controllers/artists/galleries_controller.rb

class Artists::GalleriesController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @galleries = @artist.galleries
  end
end
