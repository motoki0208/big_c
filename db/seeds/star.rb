
Star.create(
    avatar:                "avatar-f.png",
    name:                  "白柳明香里",
    url_name:              "白柳のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              "1994-05-25",
    gender:                1,
    sibling_position:      1,
    family_env:            0,
    economic_situation:    1,
    hometown_id:           22,
    occupation_id:         227,
    school_club_id:        10,
    preference_for_school: 1,
    truancy_experience:    "false"
  )
Star.create(
   avatar:                "administrator-male.png",
   name:                  "kobayashi sachio",
   url_name:              "kobayashi sachioのホームページ",
   url:                   "https://socialfighter.jp/",
   birthday:              "1991-07-07",
   gender:                0,
   sibling_position:      3,
   family_env:            0,
   economic_situation:    1,
   hometown_id:           29,
   occupation_id:         431,
   school_club_id:        24,
   preference_for_school: 1,
   truancy_experience:    "true"
   )
Star.create(
    avatar:                "manager.png",
    name:                  "田畑 幹",
    url_name:              "田畑 幹のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              "1993-02-08",
    gender:                0,
    sibling_position:      1,
    family_env:            0,
    economic_situation:    1,
    hometown_id:           28,
    occupation_id:         227,
    school_club_id:        8,
    preference_for_school: 1,
    truancy_experience:    "false"
)
Star.create(
    avatar:                "student-male.png",
    name:                  "辻 修平",
    url_name:              "辻 修平のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              "1994-02-08",
    gender:                0,
    sibling_position:      0,
    family_env:            0,
    economic_situation:    1,
    hometown_id:           28,
    occupation_id:         215,
    school_club_id:        9,
    preference_for_school: 1,
    truancy_experience:    "false"
)

#-- faker ---------------------------------- 

require 'faker'
require 'csv'
require 'gimei'

Faker::Config.locale = :ja

avatar_urls_m     = []
avatar_urls_f     = []

CSV.foreach("db/csv/avatar_url_m.csv") do |info|
  avatar_urls_m << info[0]
end

CSV.foreach("db/csv/avatar_url_f.csv") do |info|
  avatar_urls_f << info[0]
end

avatar_url_m_c   = avatar_urls_m.length - 1
avatar_url_f_c   = avatar_urls_f.length - 1
hometown_c       = Hometown.count
occupation_c     = Occupation.count
club_c           = SchoolClub.count

# 男性*日本
100.times do |i|
  star_name = Gimei.male
  Star.create(
    avatar:                avatar_urls_m[rand(0..avatar_url_m_c)],
    name:                  star_name.kanji,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                0,
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(1..47),
    occupation_id:         rand(1..occupation_c),
    school_club_id:        rand(1..club_c),
    preference_for_school: rand(0..4),
    truancy_experience:    "#{Faker::Boolean.boolean(0.5)}"
    )
end

# 男性*海外
50.times do |i|
  star_name = Gimei.male
  Star.create(
    avatar:                avatar_urls_m[rand(0..avatar_url_m_c)],
    name:                  star_name.kanji,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                0,
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(48..hometown_c),
    occupation_id:         rand(1..occupation_c),
    school_club_id:        rand(1..club_c),
    preference_for_school: rand(0..4),
    truancy_experience:    "#{Faker::Boolean.boolean(0.5)}"
    )
end

# 女性*日本
100.times do |i|
  star_name = Gimei.female
  Star.create(
    avatar:                avatar_urls_f[rand(0..avatar_url_f_c)],
    name:                  star_name.kanji,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                1,
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(1..47),
    occupation_id:         rand(1..occupation_c),
    school_club_id:        rand(1..club_c),
    preference_for_school: rand(0..4),
    truancy_experience:    "#{Faker::Boolean.boolean(0.5)}"
    )
end

# 女性*海外
50.times do |i|
  star_name = Gimei.female
  Star.create(
    avatar:                avatar_urls_f[rand(0..avatar_url_f_c)],
    name:                  star_name.kanji,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                1,
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(48..hometown_c),
    occupation_id:         rand(1..occupation_c),
    school_club_id:        rand(1..club_c),
    preference_for_school: rand(0..4),
    truancy_experience:    "#{Faker::Boolean.boolean(0.5)}"
    )
end

# その他*日本
80.times do |i|
  star_name = Gimei.name
  Star.create(
    avatar:                avatar_urls_m[rand(0..avatar_url_m_c)],
    name:                  star_name.kanji,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                2,
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(1..47),
    occupation_id:         rand(1..occupation_c),
    school_club_id:        rand(1..club_c),
    preference_for_school: rand(0..4),
    truancy_experience:    "#{Faker::Boolean.boolean(0.5)}"
    )
end

# その他*海外
30.times do |i|
  star_name = Gimei.name
  Star.create(
    avatar:                avatar_urls_f[rand(0..avatar_url_f_c)],
    name:                  star_name.kanji,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                2,
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(48..hometown_c),
    occupation_id:         rand(1..occupation_c),
    school_club_id:        rand(1..club_c),
    preference_for_school: rand(0..4),
    truancy_experience:    "#{Faker::Boolean.boolean(0.5)}"
    )
end
