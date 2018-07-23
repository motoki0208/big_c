require "csv"
# 各テーブルの値入力用/設定項目
CSV.foreach("db/csv/school_event.csv") do |info|
  SchoolEvent.create(name: info[0])
end

CSV.foreach("db/csv/lesson.csv") do |info|
  Lesson.create(name: info[0])
end

CSV.foreach("db/csv/school_place.csv") do |info|
  SchoolPlace.create(name: info[0])
end

CSV.foreach("db/csv/school_subject.csv") do |info|
  SchoolSubject.create(name: info[0])
end

CSV.foreach("db/csv/hometown.csv") do |info|
  Hometown.create(name: info[0])
end

CSV.foreach("db/csv/occupation.csv") do |info|
  Occupation.create(name: info[0], url_13hw: info[1])
end
