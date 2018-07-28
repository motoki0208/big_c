# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180728023753) do

  create_table "addictions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "image", null: false
    t.text "title", null: false
    t.text "summary", null: false
    t.text "addicted_points"
    t.text "difficult_points"
    t.text "trigger"
    t.text "future_aim"
    t.text "trying_things"
    t.text "message"
    t.integer "status"
    t.bigint "star_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_addictions_on_star_id"
  end

  create_table "hometowns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_hometowns_on_name"
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "addiction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addiction_id"], name: "index_likes_on_addiction_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "occupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.text "url_13hw"
    t.index ["name"], name: "index_occupations_on_name"
  end

  create_table "school_clubs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "school_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "school_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "school_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "speciality_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "avatar", null: false
    t.string "name", default: "匿名", null: false
    t.text "url_name"
    t.text "url"
    t.date "birthday", null: false
    t.integer "gender"
    t.integer "sibling_position"
    t.integer "family_env"
    t.integer "economic_situation"
    t.bigint "hometown_id"
    t.bigint "occupation_id"
    t.bigint "school_club_id"
    t.integer "preference_for_school"
    t.boolean "truancy_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hometown_id"], name: "index_stars_on_hometown_id"
    t.index ["occupation_id"], name: "index_stars_on_occupation_id"
    t.index ["school_club_id"], name: "index_stars_on_school_club_id"
  end

  create_table "stars_dislike_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_event_id"], name: "index_stars_dislike_events_on_school_event_id"
    t.index ["star_id", "school_event_id"], name: "index_stars_dislike_events_on_star_id_and_school_event_id", unique: true
    t.index ["star_id"], name: "index_stars_dislike_events_on_star_id"
  end

  create_table "stars_dislike_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_place_id"], name: "index_stars_dislike_places_on_school_place_id"
    t.index ["star_id", "school_place_id"], name: "index_stars_dislike_places_on_star_id_and_school_place_id", unique: true
    t.index ["star_id"], name: "index_stars_dislike_places_on_star_id"
  end

  create_table "stars_dislike_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_subject_id"], name: "index_stars_dislike_subjects_on_school_subject_id"
    t.index ["star_id", "school_subject_id"], name: "index_stars_dislike_subjects_on_star_id_and_school_subject_id", unique: true
    t.index ["star_id"], name: "index_stars_dislike_subjects_on_star_id"
  end

  create_table "stars_like_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_event_id"], name: "index_stars_like_events_on_school_event_id"
    t.index ["star_id", "school_event_id"], name: "index_stars_like_events_on_star_id_and_school_event_id", unique: true
    t.index ["star_id"], name: "index_stars_like_events_on_star_id"
  end

  create_table "stars_like_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_place_id"], name: "index_stars_like_places_on_school_place_id"
    t.index ["star_id", "school_place_id"], name: "index_stars_like_places_on_star_id_and_school_place_id", unique: true
    t.index ["star_id"], name: "index_stars_like_places_on_star_id"
  end

  create_table "stars_like_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_subject_id"], name: "index_stars_like_subjects_on_school_subject_id"
    t.index ["star_id", "school_subject_id"], name: "index_stars_like_subjects_on_star_id_and_school_subject_id", unique: true
    t.index ["star_id"], name: "index_stars_like_subjects_on_star_id"
  end

  create_table "stars_speciality_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "speciality_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciality_tag_id"], name: "index_stars_speciality_tags_on_speciality_tag_id"
    t.index ["star_id", "speciality_tag_id"], name: "index_stars_speciality_tags_on_star_id_and_speciality_tag_id", unique: true
    t.index ["star_id"], name: "index_stars_speciality_tags_on_star_id"
  end

  create_table "stars_worry_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "worry_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id", "worry_tag_id"], name: "index_stars_worry_tags_on_star_id_and_worry_tag_id", unique: true
    t.index ["star_id"], name: "index_stars_worry_tags_on_star_id"
    t.index ["worry_tag_id"], name: "index_stars_worry_tags_on_worry_tag_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worry_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "likes", "addictions"
  add_foreign_key "likes", "users"
end
