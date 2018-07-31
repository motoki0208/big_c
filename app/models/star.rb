class Star < ApplicationRecord
  # TODO:boolean型はfalse=0、true=1の整合性を保存時に担保する
  enum gender:                { male: 0, female: 1, other: 2 }
  enum sibling_position:      { the_only: 0, the_eldest: 1, the_second: 2, the_third: 3, the_fourth: 4, the_youngest: 5}
  enum family_env:            { ordinary: 0, fatherless: 1, motherless: 2, foster_parents: 3 }
  enum economic_situation:    { rich: 0, normal: 1, poor: 2 }
  enum preference_for_school: { love: 0, like: 1, soso: 2, dislike: 3, hate: 4 }
  enum truancy_experience: { true: true, false: false }

  belongs_to              :occupation,   optional: true
  belongs_to              :hometown,     optional: true
  belongs_to              :school_club,  optional: true
  has_one                 :addiction,    dependent: :destroy

  has_many :stars_like_places,      dependent: :destroy
  has_many :like_places,           through: :stars_like_places
  has_many :stars_dislike_places,   dependent: :destroy
  has_many :dislike_places,        through: :stars_dislike_places

  has_many :stars_like_events,      dependent: :destroy
  has_many :like_events,            through: :stars_like_events
  has_many :stars_dislike_events,   dependent: :destroy
  has_many :dislike_events,         through: :stars_dislike_events
  has_many :stars_like_subjects,    dependent: :destroy
  has_many :like_subjects,          through: :stars_like_subjects
  has_many :stars_dislike_subjects, dependent: :destroy
  has_many :dislike_subjects,      through: :stars_dislike_subjects
  has_many :stars_lessons, dependent: :destroy
  has_many :lessons,           through: :stars_lessons

  has_many :stars_speciality_tags, dependent: :destroy
  has_many :speciality_tags, through: :stars_speciality_tags
  has_many :stars_worry_tags, dependent: :destroy
  has_many :worry_tags, through: :stars_worry_tags

  accepts_nested_attributes_for :like_events

  def self.enums_i18n_ransack(enum_name)
    enums = eval("self.#{enum_name.to_s.pluralize}")
    enums.map { |k, v| [eval("self.#{enum_name.to_s.pluralize}_i18n")[k], v] }
  end
end
