class SchoolEvent < ApplicationRecord
  has_many :star_like_events
  has_many :star_dislike_events

  has_many :like_stars,    through: :star_like_events,    source: :stars
  has_many :dislike_stars, through: :star_dislike_events, source: :stars
end
