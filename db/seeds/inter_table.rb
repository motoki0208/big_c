create_num_tags = 4
create_num_school = 3

star_c       = Star.count
worry_c      = WorryTag.count - create_num_tags
speciality_c = SpecialityTag.count - create_num_tags
subject_c    = SchoolSubject.count - (create_num_school*2)
place_c      = SchoolPlace.count - (create_num_school*2)
event_c      = SchoolEvent.count - (create_num_school*2)

star_c.times do |i|
  worry_id           = rand(1..worry_c)
  speciality_id      = rand(1..speciality_c)
  like_subject_id    = rand(1..subject_c)
  dislike_subject_id = like_subject_id + create_num_school
  like_place_id      = rand(1..place_c)
  dislike_place_id   = like_place_id + create_num_school
  like_event_id      = rand(1..event_c)
  dislike_event_id   = like_event_id + create_num_school

  i += 1

  rand(1..create_num_tags).times do |t|
   p StarsSpecialityTag.new(
      star_id: i,
      speciality_tag_id: speciality_id
    ).save
    speciality_id += 1
  end

  rand(1..create_num_tags).times do |t|
   p StarsWorryTag.new(
      star_id: i,
      worry_tag_id: worry_id
    ).save
    worry_id += 1
  end

  rand(1..create_num_school).times do |t|
    StarsLikeEvent.create(
      star_id: i,
      school_event_id: like_event_id
    )
    like_event_id += 1
  end

  rand(1..create_num_school).times do |t|
    StarsDislikeEvent.create(
      star_id: i,
      school_event_id: dislike_event_id
    )
    dislike_event_id += 1
  end

  rand(1..create_num_school).times do |t|
    StarsLikePlace.create(
      star_id: i,
      school_place_id: like_place_id
    )
    like_place_id += 1
  end

  rand(1..create_num_school).times do |t|
    StarsDislikePlace.create(
      star_id: i,
      school_place_id: dislike_place_id
    )
    dislike_place_id += 1
  end

  rand(1..create_num_school).times do |t|
    StarsLikeSubject.create(
      star_id: i,
      school_subject_id: like_subject_id
    )
    like_subject_id += 1
  end

  rand(1..create_num_school).times do |t|
    StarsDislikeSubject.create(
      star_id: i,
      school_subject_id: dislike_subject_id
    )
    dislike_subject_id += 1
  end
end
