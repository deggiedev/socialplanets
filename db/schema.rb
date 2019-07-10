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

ActiveRecord::Schema.define(version: 2019_07_10_105619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.integer "reward"
    t.integer "primary_stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.bigint "planet_id"
    t.index ["planet_id"], name: "index_activities_on_planet_id"
    t.index ["question_id"], name: "index_activities_on_question_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "planet_name"
    t.string "stage"
    t.integer "high_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_planets_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.string "answer"
    t.string "choice_a"
    t.string "choice_b"
    t.string "choice_c"
    t.string "choice_d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resource_id"
    t.index ["resource_id"], name: "index_questions_on_resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "resource_name"
    t.integer "resource_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "planet_id"
    t.index ["planet_id"], name: "index_resources_on_planet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "native_species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "planets"
  add_foreign_key "activities", "questions"
  add_foreign_key "planets", "users"
  add_foreign_key "questions", "resources"
  add_foreign_key "resources", "planets"
end
