require "csv"
# 各テーブルの値入力用/設定項目
CSV.foreach("db/csv/hometown.csv") do |info|
  Hometown.create(name: info[0])
end

CSV.foreach("db/csv/hometown_overseas.csv") do |info|
  Hometown.create(name: info[0])
end

CSV.foreach("db/csv/occupation.csv") do |info|
  Occupation.create(name: info[0], url_13hw: info[1])
end

CSV.foreach("db/csv/school_event.csv") do |info|
  SchoolEvent.create(name: info[0])
end

CSV.foreach("db/csv/school_place.csv") do |info|
  SchoolPlace.create(name: info[0])
end

CSV.foreach("db/csv/school_subject.csv") do |info|
  SchoolSubject.create(name: info[0])
end

CSV.foreach("db/csv/school_club.csv") do |info|
  SchoolClub.create(name: info[0])
end

CSV.foreach("db/csv/speciality_tag.csv") do |info|
  SpecialityTag.create(name: info[0])
end

CSV.foreach("db/csv/worry_tag.csv") do |info|
  WorryTag.create(name: info[0])
end

