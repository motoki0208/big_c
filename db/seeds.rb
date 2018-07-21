# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"
# 各テーブルの値入力用
CSV.foreach("db/csv/event.csv") do |info|
  Event.create(name: info[0])
end

CSV.foreach("db/csv/game.csv") do |info|
  Game.create(name: info[0])
end

CSV.foreach("db/csv/lesson.csv") do |info|
  Lesson.create(name: info[0])
end

CSV.foreach("db/csv/place.csv") do |info|
  Place.create(name: info[0])
end

CSV.foreach("db/csv/program.csv") do |info|
  Program.create(name: info[0])
end

CSV.foreach("db/csv/subject.csv") do |info|
  Subject.create(name: info[0])
end

CSV.foreach("db/csv/location.csv") do |info|
  Location.create(name: info[0])
end

CSV.foreach("db/csv/occupation.csv") do |info|
  Occupation.create(name: info[0], url: info[1])
end
