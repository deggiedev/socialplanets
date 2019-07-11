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


ActiveRecord::Schema.define(version: 2019_07_11_132558) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.integer "base_reward"
    t.integer "primary_stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "material_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planet_materials", force: :cascade do |t|
    t.integer "total_units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "planet_id"
    t.bigint "material_id"
    t.index ["material_id"], name: "index_planet_materials_on_material_id"
    t.index ["planet_id"], name: "index_planet_materials_on_planet_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "planet_name"
    t.integer "stage"
    t.integer "high_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_planets_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.string "choice_a"
    t.string "choice_b"
    t.string "choice_c"
    t.string "choice_d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "activity_id"
    t.string "answer"
    t.bigint "material_id"
    t.index ["activity_id"], name: "index_questions_on_activity_id"
    t.index ["material_id"], name: "index_questions_on_material_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "native_species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "planet_materials", "materials"
  add_foreign_key "planet_materials", "planets"
  add_foreign_key "planets", "users"
  add_foreign_key "questions", "activities"
  add_foreign_key "questions", "materials"

end
