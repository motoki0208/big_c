class Event < ApplicationRecord
  has_many :star_events
  has_many :stars, through: :star_events
end
