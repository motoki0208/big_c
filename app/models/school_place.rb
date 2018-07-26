class SchoolPlace < ApplicationRecord
  has_many :stars_like_places
  has_many :stars_dislike_places

  has_many :like_stars,    through: :stars_like_places,    source: :stars
  has_many :dislike_stars, through: :stars_dislike_places, source: :stars
end
