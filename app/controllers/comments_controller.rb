


  class CommentsController < ApplicationController
    def create
      @comment = Comment.create(
          post_id: params[:comment][:post_id],  #key is post_id value is params[:comment][:post_id]
          user_id: current_user.id,
          message: params[:comment][:message]
      )

      redirect_to "/posts/#{params[:comment][:post_id]}"
    end
  end

