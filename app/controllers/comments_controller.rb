class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = Comment.new
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.create(comment_params.merge(commenter: current_user))
    if @comment.save
      redirect_to @question
      flash[:notice] = "Thanks for your comment"
    else
      redirect_to @question
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end