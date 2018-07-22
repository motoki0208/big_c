class Star < ApplicationRecord
  enum gender: { male: true, female: false }

  belongs_to              :occupation,   optional: true
  belongs_to              :hometown,     optional: true
  belongs_to              :school_club,  optional: true
  has_and_belongs_to_many :game_genres
  has_and_belongs_to_many :contents_genres
  has_and_belongs_to_many :lessons
  has_and_belongs_to_many :school_charges
  has_and_belongs_to_many :weakness_tags
  has_and_belongs_to_many :strength_tags

  has_many :like_places,           through: :star_like_places,    source: :school_places
  has_many :star_like_places,      dependent: :destroy
  has_many :dislike_places,        through: :star_dislike_places, source: :school_places
  has_many :star_dislike_places,   dependent: :destroy

  has_many :like_events,           through: :star_like_events,    source: :school_events
  has_many :star_like_events,      dependent: :destroy
  has_many :dislike_events,        through: :star_dislike_events, source: :school_events
  has_many :star_dislike_events,   dependent: :destroy

  has_many :like_subjects,         through: :star_like_subjects,   source: :school_subjects
  has_many :star_like_subjects,    dependent: :destroy
  has_many :dislike_subjects,      through: :star_dislike_subjects,source: :school_subjects
  has_many :star_dislike_subjects, dependent: :destroy
end
