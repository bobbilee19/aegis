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

ActiveRecord::Schema.define(version: 20161008132714) do

  create_table "contacts", force: :cascade do |t|
    t.integer  "sponsor_id"
    t.string   "role"
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "contacts", ["sponsor_id"], name: "index_contacts_on_sponsor_id"

  create_table "deliverables", force: :cascade do |t|
    t.string   "description"
    t.date     "delivery_date"
    t.integer  "contact_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "sponsor_id"
    t.string   "category"
  end

  add_index "deliverables", ["contact_id"], name: "index_deliverables_on_contact_id"
  add_index "deliverables", ["sponsor_id"], name: "index_deliverables_on_sponsor_id"

  create_table "events", force: :cascade do |t|
    t.integer  "sponsor_id"
    t.integer  "user_id"
    t.datetime "contact_at"
    t.string   "channel"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["sponsor_id"], name: "index_events_on_sponsor_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "category"
    t.string   "website"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "sponsor_id"
    t.integer  "assignee_id"
    t.datetime "remind_at"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["assignee_id"], name: "index_tasks_on_assignee_id"
  add_index "tasks", ["sponsor_id"], name: "index_tasks_on_sponsor_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

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
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
