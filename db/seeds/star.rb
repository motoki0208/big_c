require 'faker'
require 'csv'
Faker::Config.locale = :ja

avatar_urls     = []
holiday_searchs = []

CSV.foreach("db/csv/avatar_url.csv") do |info|
  avatar_urls << info[0]
end

CSV.foreach("db/csv/holiday_search.csv") do |info|
  holiday_searchs << info[0]
end

avatar_url_c     = avatar_urls.length - 1
holiday_search_c = holiday_searchs.length - 1
hometown_c       = Hometown.count
occupation_c     = Occupation.count
club_c           = SchoolClub.count

50.times do |i|
  Star.create(
    avatar:                avatar_urls[rand(0..avatar_url_c)],
    name:                  Faker::Name.name,
    birthday:              Faker::Date.birthday(20, 60),
    gender:                rand(0..1),
    sibling_position:      rand(0..5),
    family_env:            rand(0..2),
    economic_situation:    rand(0..2),
    hometown_id:           rand(0..hometown_c),
    occupation_id:         rand(0..occupation_c),
    school_club_id:        rand(0..club_c),
    holiday_research:      holiday_searchs[rand(0..holiday_search_c)],
    preference_for_school: rand(0..4),
    truancy_experience:    Faker::Boolean.boolean(0.5)
    )
end
