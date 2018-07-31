class Addiction < ApplicationRecord
  belongs_to  :star,    optional: true
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  enum status: { job: 0, hobby: 1 }

  scope :job,    -> { where status: 0 }
  scope :hobby,  -> { where status: 0 }
  scope :rand10, -> { order("RAND()").limit(10) }
end
