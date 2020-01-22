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

ActiveRecord::Schema.define(version: 20200122174929) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "location"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "school_id"
  end

  create_table "laptops", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string   "starts_at"
    t.string   "ends_at"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "periods", ["student_id"], name: "index_periods_on_student_id"
  add_index "periods", ["teacher_id"], name: "index_periods_on_teacher_id"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "standard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "school_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "school_id"
  end

end
