# app/controllers/artists/paintings_controller.rb

class Artists::PaintingsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @paintings = @artist.paintings
  end
end
