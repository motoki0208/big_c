class Lesson < ApplicationRecord
  has_many :stars_lessons
  has_many :stars, through: :stars_lessons
end
