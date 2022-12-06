class QuizCategoriesController < ApplicationController
  def index
    quiz_categories = QuizCategory.all
    render json: quiz_categories, include: ['quiz_items','quiz_items.quiz_answers']
    ## each_serializer: QuizCategorySerializer -- use of the collection?
  end

  def show
    quiz_category = QuizCategory.find_by(id: params[:id])
    render json: quiz_category, include: ['quiz_items', 'quiz_items.quiz_answers']
  end
end
