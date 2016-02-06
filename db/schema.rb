# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160206150047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "location"
    t.datetime "start_time"
    t.integer  "duration"
    t.integer  "registration_min"
    t.integer  "registration_limit"
    t.integer  "user_id"
    t.integer  "sport_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "description"
  end

  add_index "events", ["sport_id"], name: "index_events_on_sport_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "registrations", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "registrations", ["event_id"], name: "index_registrations_on_event_id", using: :btree
  add_index "registrations", ["user_id"], name: "index_registrations_on_user_id", using: :btree

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "fb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "sports"
  add_foreign_key "events", "users"
  add_foreign_key "registrations", "events"
  add_foreign_key "registrations", "users"
end
