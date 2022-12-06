class QuizAnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer, :correct, :quiz_item_id
  belongs_to :quiz_items
end
