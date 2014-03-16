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

ActiveRecord::Schema.define(version: 20140316002559) do

  create_table "hangouts", force: true do |t|
    t.datetime "datetime"
    t.string   "title"
    t.integer  "max_participants"
    t.boolean  "recordable"
    t.string   "hangout_url"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hangouts", ["user_id"], name: "index_hangouts_on_user_id"

  create_table "health_tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_health_tags", force: true do |t|
    t.integer  "user_id"
    t.integer  "health_tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_health_tags", ["health_tag_id"], name: "index_user_health_tags_on_health_tag_id"
  add_index "user_health_tags", ["user_id"], name: "index_user_health_tags_on_user_id"

  create_table "user_tags", force: true do |t|
    t.integer  "user_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_tags", ["tag_id"], name: "index_user_tags_on_tag_id"
  add_index "user_tags", ["user_id"], name: "index_user_tags_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email_address"
    t.string   "password"
    t.date     "dob"
    t.boolean  "in_hospital"
    t.boolean  "searchable_by_age"
    t.boolean  "searchable_by_condition"
    t.boolean  "is_caregiver"
    t.date     "dependant_dob"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
