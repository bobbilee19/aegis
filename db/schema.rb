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

ActiveRecord::Schema.define(version: 20161207040401) do

  create_table "events", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "location"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "category"
    t.string   "website"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "updates", force: :cascade do |t|
    t.text     "body"
    t.integer  "venue_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "updates", ["event_id"], name: "index_updates_on_event_id"
  add_index "updates", ["venue_id"], name: "index_updates_on_venue_id"

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "website"
    t.string   "phone"
    t.string   "email"
    t.string   "contact_name"
    t.boolean  "alcohol"
    t.string   "distance_from_airport"
    t.boolean  "religious"
    t.boolean  "lake"
    t.boolean  "rental_on_site"
    t.boolean  "connected"
    t.string   "status"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "event_id"
  end

end
