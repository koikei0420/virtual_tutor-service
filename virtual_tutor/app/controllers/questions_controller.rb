class QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions, status: 200
  rescue ActiveRecord::RecordNotFound
    render json: { error: "見つかりませんでした" }, status: 404
  end
  
  def create
    question = Question.create!(body: question_params[:body])
    render json: question, status: 200
  rescue ActiveRecord::RecordInvalid
    render json: { error: "投稿ができませんでした" }, status: 422
  end

  def show
    question = Question.joins(:answer).find(question_params[:id])
    render json: question, status: 200
  rescue ActiveRecord::RecordNotFound
    render json: { error: "見つかりませんでした" }, status: 404
  end

  private
  def question_params
    params.permit(:id, :body)
  end
end
