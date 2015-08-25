class ReplyCommentsController < ApplicationController
	def create
                @comment = Comment.find(params[:comment_id])
                @rep_comment = @comment.reply_comments.create!(comment_params)
                redirect_to @article
        end
private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
