class CommentsController < ApplicationController

  # POST /articles/:article_id/comments
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article_id = @article.id
    if @comment.save
      # redirect_to "/articles/#{params[:article_id]}"
      redirect_to article_path(@article)
    else
      render :'articles/show'
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :content)
    end
end
