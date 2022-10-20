class CommentsController < ApplicationController

    def index
        # debugger
        if params[:user_id].nil?
            @comments = Comment.find_by(artwork_id: params[:artwork_id])
        elsif params[:artwork_id].nil?
            @comments = Comment.find_by(author_id: params[:user_id])
        end
      render json: @comments
    end
  
    def create
        params[:comment][:artwork_id] = params[:artwork_id]
        # debugger
        comment = Comment.new(comment_params)
      if comment.save
          render json: comment
      else
          render json: comment.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def show
        artwork = Artwork.find(params[:id])
      render json: artwork
    end
  
    def update
      artwork = Artwork.find(params[:id])
      
      if artwork.update(artwork_params)
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def destroy
      artwork_destroy = Artwork.destroy(params[:id])
      render json: artwork_destroy
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :author_id, :artwork_id)
    end
  
  end