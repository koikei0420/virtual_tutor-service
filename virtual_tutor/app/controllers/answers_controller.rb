class AnswersController < ApplicationController
  def create
    answer = Answer.create!(body: question_answers_params[:body], question_id: question_answers_params[:question_id])
    render json: answer, status: 200
  rescue ActiveRecord::RecordInvalid
    render json: { error: '投稿ができませんでした' }, status: 422
  end

  private
  def question_answers_params
    params.permit(:question_id, :body)
  end
end
