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

ActiveRecord::Schema.define(version: 20150129234524) do

  create_table "calorie_consumptions", force: :cascade do |t|
    t.datetime "consumed_on"
    t.string   "food"
    t.integer  "calorie_intake"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.datetime "performed_on"
    t.string   "exercise_type"
    t.decimal  "exercise_duration"
    t.integer  "calorie_burn"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "step_counts", force: :cascade do |t|
    t.datetime "taken_on"
    t.integer  "step_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weights", force: :cascade do |t|
    t.decimal  "daily_weight"
    t.date     "recorded_on"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
