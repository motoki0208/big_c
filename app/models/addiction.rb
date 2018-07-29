class Addiction < ApplicationRecord
  belongs_to  :star,    optional: true

  enum status: { job: 0, hobby: 1 }

  scope :job,    -> { where status: 0 }
  scope :hobby,  -> { where status: 0 }
  scope :rand10, -> { order("RAND()").limit(10) }
end
