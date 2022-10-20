class ArtworksController < ApplicationController

    def index
      @atrworks = Artwork.all
      render json: @artwork
    end
  
    def create
      artwork = Artwork.new(params.require(:artwork).permit(:title, :image_url, :artist_id))
      if artwork.save
          render json: artwork
      else
          render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def show
        artwork = Artwork.find(params[:id])
      render json: artwork
    end
  
    def update
      artwork_update = Artwork.update(params[:id], :title => params[:title], :image_url => params[:image_url], :artist_id => params[:artist_id])
  
      if artwork_update.save
        render json: artwork_update
      else
        render json: artwork_update.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def destroy
      artwork_destroy = Artwork.destroy(params[:id])
      render json: artwork_destroy
    end
  
  end