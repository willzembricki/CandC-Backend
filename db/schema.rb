# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_24_012104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_states", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_favorite_states_on_state_id"
    t.index ["user_id"], name: "index_favorite_states_on_user_id"
  end

  create_table "offender_records", force: :cascade do |t|
    t.string "crimeName"
    t.integer "totalPopO"
    t.integer "asianPopO"
    t.integer "native_hawaiianO"
    t.integer "blackO"
    t.integer "american_indianO"
    t.integer "unknownO"
    t.integer "whiteO"
    t.integer "year"
    t.bigint "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_offender_records_on_state_id"
  end

  create_table "saved_records", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "offender_record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["offender_record_id"], name: "index_saved_records_on_offender_record_id"
    t.index ["user_id"], name: "index_saved_records_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.integer "population"
    t.integer "asianPop"
    t.integer "native_hawaiian"
    t.integer "black"
    t.integer "american_indian"
    t.integer "unknown"
    t.integer "white"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorite_states", "states"
  add_foreign_key "favorite_states", "users"
  add_foreign_key "offender_records", "states"
  add_foreign_key "saved_records", "offender_records"
  add_foreign_key "saved_records", "users"
end
