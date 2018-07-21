class Strength < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :strength, optional: true
end
