class QuizCategorySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :quiz_items
  has_many :quiz_answers, through: :quiz_items

  def find_quiz_item
    # group by?
    # join table?
    # byebug // instance method is going to be scope to something
    @quiz_items = QuizCategory.group(params:[:id]).quiz_items
  end

end
