class StarDislikePlace < ApplicationRecord
  belongs_to :school_place
  belongs_to :star
end