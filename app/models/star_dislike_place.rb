class StarDislikePlace < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :dislike_place, class_name: "Place", optional: true
end
