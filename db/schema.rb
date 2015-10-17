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

ActiveRecord::Schema.define(version: 20151017141351) do

  create_table "class_tests", force: :cascade do |t|
    t.integer  "student_class_id"
    t.string   "name"
    t.text     "description"
    t.integer  "position"
    t.date     "date_of_test"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "class_tests", ["student_class_id"], name: "index_class_tests_on_student_class_id"

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "room"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mutiple_choise_answers", force: :cascade do |t|
    t.integer  "test_question_id"
    t.text     "answer"
    t.boolean  "is_correct_answer"
    t.string   "position"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "mutiple_choise_answers", ["test_question_id"], name: "index_mutiple_choise_answers_on_test_question_id"

  create_table "student_class_maps", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "student_class_id"
    t.string   "grade"
    t.date     "year"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "student_class_maps", ["student_class_id"], name: "index_student_class_maps_on_student_class_id"
  add_index "student_class_maps", ["student_id"], name: "index_student_class_maps_on_student_id"

  create_table "student_classes", force: :cascade do |t|
    t.integer  "instructor_id"
    t.string   "name"
    t.text     "description"
    t.integer  "grade"
    t.integer  "max_students"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "student_classes", ["instructor_id"], name: "index_student_classes_on_instructor_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "email"
    t.integer  "grade"
    t.string   "parent_phone"
    t.decimal  "gpa"
    t.string   "nick_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "test_questions", force: :cascade do |t|
    t.integer  "class_test_id"
    t.text     "question"
    t.string   "position"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "test_questions", ["class_test_id"], name: "index_test_questions_on_class_test_id"

end
