class QuizItemsController < ApplicationController
  def index
    # @quiz_category = QuizCategory.find(params[:quiz_category_id])
    # @quiz_items = QuizCategory.find_by(id: @quiz_category.id).quiz_items
    # render json: @quiz_category
    quiz_items = QuizItem.all
    render json: quiz_items
  end

end
