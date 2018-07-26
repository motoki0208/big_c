class Like < ApplicationRecord
  belongs_to :star, counter_cache: :likes_count
  belongs_to :user
end
