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
20.times do |i|
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
10.times do |i|
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
20.times do |i|
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
10.times do |i|
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
20.times do |i|
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
10.times do |i|
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
