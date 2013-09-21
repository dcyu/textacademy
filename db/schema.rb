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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130921193047) do

  create_table "answers", :force => true do |t|
    t.text     "text"
    t.integer  "exercise_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contributors", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "is_admin"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "current_levels", :force => true do |t|
    t.integer  "exercise_id"
    t.integer  "lesson_id"
    t.integer  "user_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.text     "correct_exercises",   :default => "'"
    t.text     "incorrect_exercises", :default => "'"
    t.integer  "exercise_number",     :default => 1
    t.boolean  "attempted",           :default => false
  end

  create_table "curriculums", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercises", :force => true do |t|
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "lesson_id"
    t.integer  "contributor_id"
    t.boolean  "approved",       :default => false
  end

  create_table "lessons", :force => true do |t|
    t.integer  "curriculum_id"
    t.text     "instruction"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "name"
  end

  create_table "questions", :force => true do |t|
    t.text     "text"
    t.integer  "exercise_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
