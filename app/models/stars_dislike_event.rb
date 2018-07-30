class StarsDislikeEvent < ApplicationRecord
  belongs_to :dislike_event, class_name: "SchoolEvent", foreign_key:"school_event_id"
  belongs_to :star
end
