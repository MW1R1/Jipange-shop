class PaintingsController < ApplicationController
  def edit
    @painting = Painting.find(params[:id])
    @galleries = Gallery.all
    @artists = Artist.all
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update(painting_params)
      redirect_to @painting
    else
      render :edit
    end
  end
    def index
      @paintings = Painting.all
    end
  
    def show
      @painting = Painting.find(params[:id])
    end
  
    def new
      @painting = Painting.new
      @galleries = Gallery.all
      @artists = Artist.all
    end
  
    def create
      @painting = Painting.create(painting_params)
      redirect_to @painting.artist
    end
  
    def destroy
      @painting = Painting.find(params[:id])
      @painting.destroy
      redirect_to paintings_path
    end
  
    private
  
    def painting_params
      params.require(:painting).permit(:name, :price, :artist_id, :gallery_id)
    end
  end
  