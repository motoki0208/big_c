class StarsDislikePlace < ApplicationRecord
  belongs_to :dislike_place, class_name: "SchoolPlace", foreign_key:"school_place_id"
  belongs_to :star
end
