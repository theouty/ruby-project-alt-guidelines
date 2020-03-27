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

ActiveRecord::Schema.define(version: 2020_03_25_220606) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "vibe"
    t.integer "avg_temperature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "event_type"
    t.integer "date_digits"
    t.integer "avg_age_attendees"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occasions", force: :cascade do |t|
    t.string "collab_name"
    t.integer "city_id"
    t.integer "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "current_city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
