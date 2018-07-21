class StarLesson < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :lesson, optional: true
end
