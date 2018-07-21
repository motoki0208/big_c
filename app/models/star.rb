class Star < ApplicationRecord
  enum gender: { male: true, female: false }

  belongs_to :occupation, optional: true
  has_many :star_events
  has_many :events, through: :star_events
  has_many :star_games
  has_many :games, through: :star_games
  has_many :star_lessons
  has_many :lessons, through: :star_lessons
  belongs_to :hometown, class_name: "Location", foreign_key: "hometown_id", dependent: :destroy
  belongs_to :address, class_name: "Location", foreign_key: "address_id", dependent: :destroy
  has_many :star_like_places
  has_many :like_places, class_name: "Place", through: :star_like_places
  has_many :star_dislike_places
  has_many :dislike_places, class_name: "Place", through: :star_dislike_places
  has_many :star_programs
  has_many :programs, through: :star_programs
  has_many :star_subjects
  has_many :subjects, through: :star_subjects
  has_many :star_weaknesses
  has_many :weaknesses, through: :star_weaknesses
  has_many :star_strengths
  has_many :strengths, through: :star_strengths
end
