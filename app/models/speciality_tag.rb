class SpecialityTag < ApplicationRecord
  has_many :stars_speciality_tags
  has_many :stars, through: :stars_speciality_tags
end
