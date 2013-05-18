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

ActiveRecord::Schema.define(:version => 20130516114047) do

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.integer  "tuition"
    t.date     "due_date"
    t.integer  "student_rank"
    t.integer  "student_progress"
    t.boolean  "accepted"
    t.boolean  "complete"
    t.integer  "user_id"
    t.string   "address1"
    t.string   "address2"
    t.integer  "zip"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.float    "percent_complete"
  end

  create_table "steps", :force => true do |t|
    t.string   "name"
    t.date     "duedate"
    t.boolean  "complete"
    t.integer  "college_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "date_of_birth"
    t.integer  "GPA"
    t.integer  "sat"
    t.integer  "phone"
    t.boolean  "allow_text"
    t.boolean  "allow_email_notifications"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
