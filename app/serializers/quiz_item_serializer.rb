class QuizItemSerializer < ActiveModel::Serializer
  attributes :id, :question
  belongs_to :quiz_category
  has_many :quiz_answers
end
