class StarsLikeSubject < ApplicationRecord
  belongs_to :school_subject
  belongs_to :star
end