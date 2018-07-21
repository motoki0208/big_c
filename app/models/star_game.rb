class StarGame < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :game, optional: true
end
