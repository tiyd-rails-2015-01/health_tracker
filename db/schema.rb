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

ActiveRecord::Schema.define(version: 20150129194854) do

  create_table "calories", force: :cascade do |t|
    t.integer  "calories_consumed"
    t.date     "calories_on"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.float    "exercise_amount"
    t.string   "exercise_type"
    t.date     "exercise_on"
    t.integer  "calories_consumed"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer  "step_amount"
    t.date     "step_on"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weights", force: :cascade do |t|
    t.float    "weight_amount"
    t.date     "weight_on"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
