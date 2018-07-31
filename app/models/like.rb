class Like < ApplicationRecord
  belongs_to :addiction, counter_cache: :likes_count
  belongs_to :user
end
