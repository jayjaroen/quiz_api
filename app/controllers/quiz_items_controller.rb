class QuizItemsController < ApplicationController
  def index
    @quiz_category = QuizCategory.find(params[:quiz_category_id])
    @quiz_items = QuizCategory.find_by(name: @quiz_category.name).quiz_items
    render json: @quiz_category
    render json: @quiz_items
  end

end
