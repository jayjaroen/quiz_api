class QuizCategory < ApplicationRecord
  has_many :quiz_items
  has_many :quiz_answers, through: :quiz_items
end
