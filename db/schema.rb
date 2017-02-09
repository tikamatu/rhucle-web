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

ActiveRecord::Schema.define(version: 20150920050114) do

  create_table "abouts", force: :cascade do |t|
    t.string   "photo",      limit: 255
    t.text     "profile",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "discs", force: :cascade do |t|
    t.string   "title",        limit: 255,   null: false
    t.text     "artist",       limit: 65535, null: false
    t.date     "released_on"
    t.string   "record_label", limit: 255
    t.text     "catalog",      limit: 65535
    t.string   "artworked_by", limit: 255
    t.text     "format",       limit: 65535, null: false
    t.text     "url",          limit: 65535
    t.string   "artwork",      limit: 255
    t.text     "track_list",   limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "started_on"
    t.text     "detail",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "top_photos", force: :cascade do |t|
    t.integer  "order",      limit: 4,                  null: false
    t.boolean  "active",     limit: 1,   default: true, null: false
    t.string   "url",        limit: 255
    t.string   "photo",      limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "visual_arts", force: :cascade do |t|
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
