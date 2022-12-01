class QuizCategoriesController < ApplicationController
  def index
    @quiz_categories = QuizCategory.all
    render json: @quiz_categories
  end
end
