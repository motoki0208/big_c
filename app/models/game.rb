class Game < ApplicationRecord
  has_many :star_games
  has_many :stars, through: :star_games
end
