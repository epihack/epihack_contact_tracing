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

ActiveRecord::Schema.define(version: 20141210205636) do

  create_table "animal_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_statuses", primary_key: "event_status_id", force: true do |t|
    t.integer  "event_id"
    t.string   "status"
    t.datetime "status_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", primary_key: "event_id", force: true do |t|
    t.datetime "date_reported"
    t.string   "description"
    t.integer  "location"
    t.string   "location_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "caller_number"
    t.string   "name"
    t.string   "farmer_id"
    t.integer  "number_of_infected"
    t.integer  "animal_type_id"
    t.text     "animal_symptoms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptom_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
