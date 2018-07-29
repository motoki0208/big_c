class StarsLikeEvent < ApplicationRecord
  belongs_to :like_event, class_name: "SchoolEvent", foreign_key:"school_event_id"
  belongs_to :star
end
