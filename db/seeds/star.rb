require 'faker'
require 'csv'
Faker::Config.locale = :ja

avatar_urls     = []

CSV.foreach("db/csv/avatar_url.csv") do |info|
  avatar_urls << info[0]
end

avatar_url_c     = avatar_urls.length - 1
hometown_c       = Hometown.count
occupation_c     = Occupation.count
club_c           = SchoolClub.count

50.times do |i|
  star_name = Faker::Name.name
  Star.create(
    avatar:                avatar_urls[rand(0..avatar_url_c)],
    name:                  star_name,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                rand(0..2),
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

20.times do |i|
  star_name = Faker::Name.name
  Star.create(
    avatar:                avatar_urls[rand(0..avatar_url_c)],
    name:                  star_name,
    url_name:              "#{star_name}のホームページ",
    url:                   "https://socialfighter.jp/",
    birthday:              Faker::Date.birthday(20, 60),
    gender:                rand(0..2),
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
