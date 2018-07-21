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

ActiveRecord::Schema.define(version: 20180721071507) do

  create_table "charges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_locations_on_name"
  end

  create_table "occupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_occupations_on_name"
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "star_charges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "charge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charge_id"], name: "index_star_charges_on_charge_id"
    t.index ["star_id"], name: "index_star_charges_on_star_id"
  end

  create_table "star_dislike_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "dislike_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dislike_place_id"], name: "index_star_dislike_places_on_dislike_place_id"
    t.index ["star_id"], name: "index_star_dislike_places_on_star_id"
  end

  create_table "star_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_star_events_on_event_id"
    t.index ["star_id"], name: "index_star_events_on_star_id"
  end

  create_table "star_games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_star_games_on_game_id"
    t.index ["star_id"], name: "index_star_games_on_star_id"
  end

  create_table "star_lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_star_lessons_on_lesson_id"
    t.index ["star_id"], name: "index_star_lessons_on_star_id"
  end

  create_table "star_like_places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "like_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["like_place_id"], name: "index_star_like_places_on_like_place_id"
    t.index ["star_id"], name: "index_star_like_places_on_star_id"
  end

  create_table "star_programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_star_programs_on_program_id"
    t.index ["star_id"], name: "index_star_programs_on_star_id"
  end

  create_table "star_strengths", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "strength_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_star_strengths_on_star_id"
    t.index ["strength_id"], name: "index_star_strengths_on_strength_id"
  end

  create_table "star_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_star_subjects_on_star_id"
    t.index ["subject_id"], name: "index_star_subjects_on_subject_id"
  end

  create_table "star_weaknesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "star_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_star_weaknesses_on_star_id"
    t.index ["subject_id"], name: "index_star_weaknesses_on_subject_id"
  end

  create_table "stars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", default: "", null: false
    t.boolean "gender", default: true
    t.date "birthday", null: false
    t.bigint "address_id"
    t.bigint "hometown_id"
    t.text "career"
    t.bigint "occupation_id"
    t.integer "sibling"
    t.integer "family"
    t.integer "economic_situation"
    t.string "holiday_research"
    t.integer "club"
    t.integer "preference_for_school"
    t.boolean "truancy"
    t.integer "like_comic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_stars_on_address_id"
    t.index ["hometown_id"], name: "index_stars_on_hometown_id"
    t.index ["occupation_id"], name: "index_stars_on_occupation_id"
  end

  create_table "strengths", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weaknesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "stars", "locations", column: "address_id"
  add_foreign_key "stars", "locations", column: "hometown_id"
end
