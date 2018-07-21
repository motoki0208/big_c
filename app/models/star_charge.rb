class StarCharge < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :charge, optional: true
end
