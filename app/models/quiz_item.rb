class QuizItem < ApplicationRecord
  belongs_to :quiz_category
  has_many :quiz_answers
end
