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

ActiveRecord::Schema.define(version: 20171101133555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bizs", force: :cascade do |t|
    t.string "name", null: false
    t.float "lat", null: false
    t.float "lng", null: false
    t.json "hours"
    t.integer "price"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "biz_image_file_name"
    t.string "biz_image_content_type"
    t.integer "biz_image_file_size"
    t.datetime "biz_image_updated_at"
    t.string "img_url"
    t.string "address"
    t.index ["name"], name: "index_bizs_on_name", unique: true
  end

  create_table "descriptions", force: :cascade do |t|
    t.string "biz_id", null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "body", null: false
    t.integer "rating", null: false
    t.integer "biz_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "fname", null: false
    t.string "lname", null: false
    t.string "img_url"
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "zipcode"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
