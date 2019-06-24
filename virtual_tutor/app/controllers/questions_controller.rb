class QuestionsController < ApplicationController
  def create
    question = Question.create!(body: params[:body])
    render json: { questionID: question.id, body: question.body }, status: 200
  rescue ActiveRecord::RecordInvalid
    render json: { error: "投稿ができませんでした" }, status: 422
  end
end
