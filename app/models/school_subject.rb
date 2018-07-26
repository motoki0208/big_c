class SchoolSubject < ApplicationRecord
  has_many :stars_like_subjects
  has_many :stars_dislike_subjects

  has_many :like_stars,    through: :stars_like_subjects,    source: :stars
  has_many :dislike_stars, through: :stars_dislike_subjects, source: :stars
end
