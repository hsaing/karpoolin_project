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

ActiveRecord::Schema.define(version: 20130817215231) do

  create_table "activities", force: true do |t|
    t.string   "activity_name",       limit: 75
    t.datetime "activity_start_date"
    t.datetime "activity_end_date"
    t.time     "activity_start_time"
    t.time     "activity_end_time"
    t.string   "address_street",      limit: 45
    t.string   "address_city",        limit: 45
    t.integer  "address_zipcode"
    t.string   "address_state",       limit: 5
    t.string   "phone_number",        limit: 15
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["parent_id"], name: "index_activities_on_parent_id"

  create_table "carpoolers", force: true do |t|
    t.integer  "parent_id"
    t.integer  "activity_id"
    t.integer  "student_id"
    t.boolean  "need_ride"
    t.string   "notes"
    t.boolean  "can_drive_up"
    t.boolean  "can_drive_return"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carpoolers", ["activity_id"], name: "index_carpoolers_on_activity_id"
  add_index "carpoolers", ["parent_id"], name: "index_carpoolers_on_parent_id"
  add_index "carpoolers", ["student_id"], name: "index_carpoolers_on_student_id"

  create_table "parents", force: true do |t|
    t.string   "first_name",      limit: 75
    t.string   "last_name",       limit: 75
    t.string   "email",           limit: 45
    t.string   "password_digest"
    t.string   "address_street",  limit: 45
    t.string   "address_city",    limit: 45
    t.integer  "address_zipcode"
    t.string   "address_state",   limit: 5
    t.string   "phone_home",      limit: 15
    t.string   "phone_mobile",    limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name",             limit: 75
    t.string   "last_name",              limit: 75
    t.string   "email",                  limit: 45
    t.string   "gender",                 limit: 2
    t.date     "birth_date"
    t.string   "home_school_name",       limit: 75
    t.string   "school_address_street",  limit: 45
    t.string   "school_address_city",    limit: 45
    t.integer  "school_address_zipcode"
    t.string   "school_address_state",   limit: 5
    t.string   "school_phone_number",    limit: 15
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["parent_id"], name: "index_students_on_parent_id"

end
