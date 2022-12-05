class QuizCategoriesController < ApplicationController
  def index
    @quiz_categories = QuizCategory.all
    render json: @quiz_categories
  end

  def show
    @quiz_category = QuizCategory.find_by(id: params[:id])
    render json: @quiz_category
  end
end
