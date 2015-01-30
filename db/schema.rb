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

ActiveRecord::Schema.define(version: 20150130021843) do

  create_table "calories_consumeds", force: :cascade do |t|
    t.date     "date"
    t.integer  "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    # t.string   "food"
  end

  create_table "exercises_performeds", force: :cascade do |t|
    t.date     "date"
    t.string   "exercise_name"
    t.integer  "reps_performed"
    t.float    "distance"
    t.integer  "calories_burned"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "steps_takens", force: :cascade do |t|
    t.date     "date"
    t.integer  "steps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weights", force: :cascade do |t|
    t.date     "date"
    t.float    "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
