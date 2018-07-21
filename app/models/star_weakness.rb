class StarWeakness < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :weakness, optional: true
end
