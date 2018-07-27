
star_c       = Star.count
lesson_c     = Lesson.count
worry_c      = WorryTag.count
speciality_c = SpecialityTag.count
subject_c    = SchoolSubject.count
place_c      = SchoolPlace.count
event_c      = SchoolEvent.count

con = ActiveRecord::Base.connection

con.execute("ALTER TABLE stars_like_events
               DROP INDEX stars_like_events.index_stars_like_events_on_star_id_and_school_event_id;")
con.execute("ALTER TABLE stars_dislike_events
               DROP INDEX stars_dislike_events.index_stars_dislike_events_on_star_id_and_school_event_id;")

con.execute("ALTER TABLE stars_like_subjects
               DROP INDEX stars_like_subjects.index_stars_like_subjects_on_star_id_and_school_subject_id;")
con.execute("ALTER TABLE stars_dislike_subjects
               DROP INDEX stars_dislike_subjects.index_stars_dislike_subjects_on_star_id_and_school_subject_id;")

con.execute("ALTER TABLE stars_like_places
               DROP INDEX stars_like_places.index_stars_like_places_on_star_id_and_school_place_id;")
con.execute("ALTER TABLE stars_dislike_places
               DROP INDEX stars_dislike_places.index_stars_dislike_places_on_star_id_and_school_place_id;")

con.execute("ALTER TABLE stars_dislike_places
               DROP INDEX stars_dislike_places.index_stars_dislike_places_on_star_id_and_school_place_id;")

con.execute("CREATE INDEX `index_stars_like_places_on_star_id_and_school_place_id` ON `stars_like_places` (`star_id`,`school_place_id`)")

# star_c.times do |i|
#   star_id            = i + 1
#   5.times do |n|
#     lesson_id          = rand(1..lesson_c)
#     worry_id           = rand(1..worry_c)
#     speciality_id      = rand(1..speciality_c)
#     like_subject_id    = rand(1..subject_c)
#     dislike_subject_id = rand(1..subject_c)
#     like_place_id      = rand(1..place_c)
#     dislike_place_id   = rand(1..place_c)
#     like_event_id      = rand(1..event_c)
#     dislike_event_id   = rand(1..event_c)


#       con.execute("INSERT INTO `stars_lessons` 
#                    (`star_id`, `lesson_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{lesson_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")

#       con.execute("INSERT INTO `stars_worry_tags` 
#                    (`star_id`, `worry_tag_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{worry_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")
#       con.execute("INSERT INTO `stars_speciality_tags` 
#                    (`star_id`, `speciality_tag_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{speciality_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")

#       con.execute("INSERT INTO `stars_like_subjects` 
#                    (`star_id`, `school_subject_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{like_subject_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")
#       con.execute("INSERT INTO `stars_dislike_subjects` 
#                    (`star_id`, `school_subject_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{dislike_subject_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")

#       con.execute("INSERT INTO `stars_like_places` 
#                    (`star_id`, `school_place_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{like_place_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")
#       con.execute("INSERT INTO `stars_dislike_places` 
#                    (`star_id`, `school_place_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{dislike_place_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")

#       con.execute("INSERT INTO `stars_like_events` 
#                    (`star_id`, `school_event_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{like_event_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")
#       con.execute("INSERT INTO `stars_dislike_events` 
#                    (`star_id`, `school_event_id`, `created_at`, `updated_at`) 
#                    VALUES (#{star_id}, #{dislike_event_id}, '0000-00-00 00:00:00', '0000-00-00 00:00:00');")
#   end
 
# end
