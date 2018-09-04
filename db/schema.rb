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

ActiveRecord::Schema.define(version: 2018_09_04_013946) do

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "airport_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "resort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["resort_id"], name: "index_photos_on_resort_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.string "country"
    t.string "address"
    t.text "description"
    t.string "website_url"
    t.string "contact_url"
    t.string "bookings_url"
    t.integer "user_id"
    t.integer "airport_id"
    t.boolean "surfing"
    t.boolean "eco_friendly"
    t.boolean "yoga"
    t.boolean "sup"
    t.boolean "rock_climbing"
    t.boolean "day_spa"
    t.boolean "cycling"
    t.boolean "mountain_biking"
    t.boolean "diving"
    t.boolean "snorkling"
    t.boolean "hiking"
    t.boolean "skiing"
    t.boolean "snowboarding"
    t.boolean "vegan"
    t.boolean "vegetarian"
    t.boolean "golfing"
    t.boolean "gym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_resorts_on_airport_id"
    t.index ["user_id"], name: "index_resorts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "phone_number"
    t.text "description"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
