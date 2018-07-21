class Place < ApplicationRecord
  has_many :star_like_places
  has_many :star_dislike_places
  has_many :stars, through: :star_like_places
  has_many :stars, through: :star_dislike_places
end
