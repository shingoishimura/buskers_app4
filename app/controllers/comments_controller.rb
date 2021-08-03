class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to spot_path(@comment.spot)
    else
      @spot = @comment.spot
      @comments = @spot.comments
      render "spots/show" 

    end
  end

  private

 def comment_params
   params.require(:comment).permit(:text).merge(user_id: current_user.id, spot_id: params[:spot_id])
 end

end
