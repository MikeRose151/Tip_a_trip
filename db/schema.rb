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

ActiveRecord::Schema[7.0].define(version: 2023_03_07_165306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text "description"
    t.float "lat"
    t.float "long"
    t.integer "duration"
    t.integer "cost"
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_favourites_on_activity_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "original_itinerary_id"
    t.bigint "user_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.string "destination"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "public", default: false
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "itinerary_activities", force: :cascade do |t|
    t.bigint "itinerary_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_itinerary_activities_on_activity_id"
    t.index ["itinerary_id"], name: "index_itinerary_activities_on_itinerary_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favourites", "activities"
  add_foreign_key "favourites", "users"
  add_foreign_key "itineraries", "users"
  add_foreign_key "itinerary_activities", "activities"
  add_foreign_key "itinerary_activities", "itineraries"
end
