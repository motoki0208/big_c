class WeaknessTag < ApplicationRecord
  has_and_belongs_to_many :stars, optional: true
end
