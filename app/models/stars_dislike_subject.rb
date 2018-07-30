class StarsDislikeSubject < ApplicationRecord
  belongs_to :dislike_subject, class_name: "SchoolSubject", foreign_key:"school_subject_id"
  belongs_to :star
end
