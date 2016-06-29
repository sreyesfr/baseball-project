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

ActiveRecord::Schema.define(version: 20160629033357) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.date     "date_posted"
    t.time     "time_posted"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "general_managers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "team_id"
    t.text     "notes"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "team_id"
    t.text     "notes"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_statuses", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.integer  "team_id"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "abreviation"
    t.string   "city"
    t.string   "state"
    t.integer  "salary_cap"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "role"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
