class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params.merge(user: current_user))
    if @answer.save
      redirect_to @question
      flash[:notice] = "Thanks for your answer"
    else
      redirect_to @question
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end