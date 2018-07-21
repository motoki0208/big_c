class StarSubject < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :subject, optional: true
end
