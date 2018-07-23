class Addiction < ApplicationRecord
  belongs_to  :star,    optional: true

  enum status: { job: 0, hobby: 1 }
end
