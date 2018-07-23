# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"
# 各テーブルの値入力用
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
