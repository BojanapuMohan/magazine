class CommentsController < ApplicationController
	def create
                @article = Article.find(params[:article_id])
                @comment = @article.comments.create!(comment_params)
                redirect_to @article
        end
        def new
  #@comment = Reply_comment.new

end
private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
