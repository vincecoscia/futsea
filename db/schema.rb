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

ActiveRecord::Schema.define(version: 2019_03_09_184952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "price"
    t.boolean "event_end"
    t.boolean "event_start"
    t.bigint "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_events_on_field_id"
  end

  create_table "fields", force: :cascade do |t|
    t.integer "game_type"
    t.string "surface"
    t.boolean "outdoor"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_fields_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "zipcode"
    t.string "state"
    t.string "url"
    t.string "phone"
    t.string "neighborhood"
    t.text "description"
    t.integer "mon_open"
    t.integer "mon_close"
    t.integer "tue_open"
    t.integer "tue_close"
    t.integer "wed_open"
    t.integer "wed_close"
    t.integer "thu_open"
    t.integer "thu_close"
    t.integer "fri_open"
    t.integer "fri_close"
    t.integer "sat_open"
    t.integer "sat_close"
    t.integer "sun_open"
    t.integer "sun_close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "fields"
  add_foreign_key "fields", "locations"
end
