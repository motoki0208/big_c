class Star < ApplicationRecord
  enum gender:                { male: 0, female: 1, other: 2 }
  enum sibling_position:      { the_only: 0, the_eldest: 1, the_second: 2, the_third: 3, the_fourth: 4, the_youngest: 5}
  enum family_env:            { fatherless: 0, motherless: 1, foster_parents: 3 }
  enum economic_situation:    { rich: 0, normal: 1, poor: 2 }
  enum preference_for_school: { love: 0, like: 1, soso: 2, dislike: 3, hate: 4 }
  enum truancy_experience: { true: true, false: false }

  belongs_to              :occupation,   optional: true
  belongs_to              :hometown,     optional: true
  belongs_to              :school_club,  optional: true
  has_one                 :addiction,    dependent: :destroy

  has_and_belongs_to_many :lessons
  has_and_belongs_to_many :school_charges
  has_and_belongs_to_many :worry_tags

  has_many :like_places,           through: :stars_like_places,    source: :school_places
  has_many :stars_like_places,      dependent: :destroy
  has_many :dislike_places,        through: :stars_dislike_places, source: :school_places
  has_many :stars_dislike_places,   dependent: :destroy

  has_many :stars_like_events,      dependent: :destroy
  has_many :like_events,           through: :stars_like_events
  has_many :stars_dislike_events,   dependent: :destroy
  has_many :dislike_events,        through: :stars_dislike_events, source: :school_events

  has_many :like_subjects,         through: :stars_like_subjects,   source: :school_subjects
  has_many :stars_like_subjects,    dependent: :destroy
  has_many :dislike_subjects,      through: :stars_dislike_subjects,source: :school_subjects
  has_many :stars_dislike_subjects, dependent: :destroy
  has_many :stars_speciality_tags
  has_many :speciality_tags

  accepts_nested_attributes_for :like_events

  def self.enums_i18n_ransack(enum_name)
    enums = eval("self.#{enum_name.to_s.pluralize}")
    enums.map { |k, v| [eval("self.#{enum_name.to_s.pluralize}_i18n")[k], v] }
  end
end
