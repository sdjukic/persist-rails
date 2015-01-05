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

ActiveRecord::Schema.define(version: 20150105165722) do

  create_table "countries", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", force: true do |t|
    t.integer  "level"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "divisions", ["country_id"], name: "index_divisions_on_country_id"

  create_table "managers", force: true do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "team_id"
    t.integer  "stamina"
    t.integer  "goalkeeping"
    t.integer  "playmaking"
    t.integer  "passing"
    t.integer  "wing"
    t.integer  "defending"
    t.integer  "scoring"
    t.integer  "set_pieces"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.text     "name"
    t.integer  "country_id"
    t.integer  "division_id"
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["country_id"], name: "index_teams_on_country_id"
  add_index "teams", ["division_id"], name: "index_teams_on_division_id"
  add_index "teams", ["manager_id"], name: "index_teams_on_manager_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true

end
