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

ActiveRecord::Schema.define(version: 2021_09_07_143121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_days", force: :cascade do |t|
    t.date "date"
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_booking_days_on_event_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.bigint "user_id", null: false
    t.bigint "booking_days_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_days_id"], name: "index_bookings_on_booking_days_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.string "category"
    t.date "date"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
    t.integer "max_people"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "review_users", force: :cascade do |t|
    t.integer "rating"
    t.string "content"
    t.bigint "reviewee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "reviewer_id"
    t.index ["reviewee_id"], name: "index_review_users_on_reviewee_id"
    t.index ["reviewer_id"], name: "index_review_users_on_reviewer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "location"
    t.string "description"
    t.string "gender"
    t.string "phone_number"
    t.date "date_of_birth"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "booking_days", "events"
  add_foreign_key "bookings", "booking_days", column: "booking_days_id"
  add_foreign_key "bookings", "users"
  add_foreign_key "events", "users"
  add_foreign_key "review_users", "users", column: "reviewee_id"
end
