class StarLikePlace < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :like_place, class_name: "Place", optional: true
end
