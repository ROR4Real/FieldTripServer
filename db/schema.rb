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

ActiveRecord::Schema.define(version: 20131017221452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "field_trips", force: true do |t|
    t.string   "name"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "field_trips", ["school_id"], name: "index_field_trips_on_school_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "board"
    t.string   "category"
    t.string   "school_type"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "grades"
    t.boolean  "ecs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
