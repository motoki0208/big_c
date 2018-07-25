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

ActiveRecord::Schema.define(version: 20180725113017) do

  create_table "content_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "star_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_favorites_on_star_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "game_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "hometowns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_hometowns_on_name"
  end

  create_table "lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "star_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_likes_on_star_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "occupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.text "url_13hw"
    t.index ["name"], name: "index_occupations_on_name"
  end

  create_table "school_charges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
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

  create_table "stars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", default: "匿名", null: false
    t.date "birthday", null: false
    t.integer "gender", null: false
    t.integer "sibling_position"
    t.integer "family_env"
    t.integer "economic_situation"
    t.bigint "hometown_id"
    t.bigint "occupation_id"
    t.bigint "school_club_id"
    t.text "holiday_research"
    t.integer "preference_for_school"
    t.boolean "truancy_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "likes_count"
    t.index ["hometown_id"], name: "index_stars_on_hometown_id"
    t.index ["occupation_id"], name: "index_stars_on_occupation_id"
    t.index ["school_club_id"], name: "index_stars_on_school_club_id"
  end

  create_table "stars_content_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "content_genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_genre_id"], name: "index_stars_content_genres_on_content_genre_id"
    t.index ["star_id"], name: "index_stars_content_genres_on_star_id"
  end

  create_table "stars_dislike_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_event_id"], name: "index_stars_dislike_events_on_school_event_id"
    t.index ["star_id"], name: "index_stars_dislike_events_on_star_id"
  end

  create_table "stars_dislike_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_place_id"], name: "index_stars_dislike_places_on_school_place_id"
    t.index ["star_id"], name: "index_stars_dislike_places_on_star_id"
  end

  create_table "stars_dislike_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_subject_id"], name: "index_stars_dislike_subjects_on_school_subject_id"
    t.index ["star_id"], name: "index_stars_dislike_subjects_on_star_id"
  end

  create_table "stars_game_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "game_genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_genre_id"], name: "index_stars_game_genres_on_game_genre_id"
    t.index ["star_id"], name: "index_stars_game_genres_on_star_id"
  end

  create_table "stars_lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_stars_lessons_on_lesson_id"
    t.index ["star_id"], name: "index_stars_lessons_on_star_id"
  end

  create_table "stars_like_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_event_id"], name: "index_stars_like_events_on_school_event_id"
    t.index ["star_id"], name: "index_stars_like_events_on_star_id"
  end

  create_table "stars_like_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_place_id"], name: "index_stars_like_places_on_school_place_id"
    t.index ["star_id"], name: "index_stars_like_places_on_star_id"
  end

  create_table "stars_like_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_subject_id"], name: "index_stars_like_subjects_on_school_subject_id"
    t.index ["star_id"], name: "index_stars_like_subjects_on_star_id"
  end

  create_table "stars_school_charges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_charge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_charge_id"], name: "index_stars_school_charges_on_school_charge_id"
    t.index ["star_id"], name: "index_stars_school_charges_on_star_id"
  end

  create_table "stars_school_clubs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "school_club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_club_id"], name: "index_stars_school_clubs_on_school_club_id"
    t.index ["star_id"], name: "index_stars_school_clubs_on_star_id"
  end

  create_table "stars_strength_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "strength_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_stars_strength_tags_on_star_id"
    t.index ["strength_tag_id"], name: "index_stars_strength_tags_on_strength_tag_id"
  end

  create_table "stars_weakness_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "weakness_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_stars_weakness_tags_on_star_id"
    t.index ["weakness_tag_id"], name: "index_stars_weakness_tags_on_weakness_tag_id"
  end

  create_table "strength_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "weakness_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorites", "stars"
  add_foreign_key "favorites", "users"
  add_foreign_key "likes", "stars"
  add_foreign_key "likes", "users"
end
