class StarEvent < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :event, optional: true
end
