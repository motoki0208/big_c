class Addiction < ApplicationRecord
  belongs_to  :star,    optional: true
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  enum status: { job: 0, hobby: 1 }
end
