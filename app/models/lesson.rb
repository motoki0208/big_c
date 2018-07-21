class Lesson < ApplicationRecord
  has_many :star_lessons
  has_many :stars, through: :star_lessons
end
