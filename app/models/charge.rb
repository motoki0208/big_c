class Charge < ApplicationRecord
  has_many :star_charges
  has_many :stars, through: :star_charges
end
