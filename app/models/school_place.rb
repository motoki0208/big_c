class SchoolPlace < ApplicationRecord
  has_many :star_like_places
  has_many :star_dislike_places

  has_many :like_stars,    through: :star_like_places,    source: :stars
  has_many :dislike_stars, through: :star_dislike_places, source: :stars
end
