class StarsLikeEvent < ApplicationRecord
  belongs_to :school_event
  belongs_to :star
end