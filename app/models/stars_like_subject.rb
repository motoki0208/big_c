class StarsLikeSubject < ApplicationRecord
  belongs_to :like_subject, class_name: "SchoolSubject", foreign_key:"school_subject_id"
  belongs_to :star
end
