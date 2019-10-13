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

ActiveRecord::Schema.define(version: 2019_10_12_124738) do

  create_table "comments", force: :cascade do |t|
    t.string "user_class", default: "Traveller"
    t.integer "user_id"
    t.integer "post_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_memberships", force: :cascade do |t|
    t.string "user_class", default: "Traveller"
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "map_url"
    t.string "map_iframe"
    t.string "contact_number"
    t.decimal "average_rating", precision: 3, scale: 2, default: "0.0"
    t.integer "number_of_ratings", default: 0
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "user_class", default: "Traveller"
    t.integer "user_id"
    t.integer "group_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "email"
    t.string "contact_number"
    t.string "password_digest"
    t.decimal "average_rating", precision: 3, scale: 2, default: "0.0"
    t.integer "number_of_ratings", default: 0
    t.string "role"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travellers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "email"
    t.string "contact_number"
    t.string "password_digest"
    t.decimal "average_rating", precision: 3, scale: 2, default: "0.0"
    t.integer "number_of_ratings", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer "traveller_id"
    t.integer "place_id"
    t.boolean "checked_out", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
