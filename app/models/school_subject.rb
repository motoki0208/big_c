class SchoolSubject < ApplicationRecord
  has_many :star_like_subjects
  has_many :star_dislike_subjects

  has_many :like_stars,    through: :star_like_subjects,    source: :stars
  has_many :dislike_stars, through: :star_dislike_subjects, source: :stars
end
