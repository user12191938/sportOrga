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

ActiveRecord::Schema.define(:version => 20130220162145) do

  create_table "ad_contacts", :force => true do |t|
    t.string   "adSchedule"
    t.string   "company"
    t.text     "description"
    t.string   "name"
    t.string   "surname"
    t.string   "position"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ad_schedules", :force => true do |t|
    t.string   "imagePath"
    t.string   "company"
    t.text     "description"
    t.string   "contact"
    t.string   "subjectArea"
    t.float    "price"
    t.integer  "duration"
    t.float    "size"
    t.integer  "timeShift"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ad_spaces", :force => true do |t|
    t.string   "adSchedule"
    t.string   "contact"
    t.string   "subjectArea"
    t.float    "price"
    t.float    "size"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sport_clubs", :force => true do |t|
    t.string   "imagePath"
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.integer  "plz"
    t.string   "city"
    t.float    "price"
    t.text     "sportTypes"
    t.string   "sportFacility"
    t.text     "trainingHours"
    t.text     "news"
    t.string   "table"
    t.string   "matchSchedule"
    t.string   "website"
    t.string   "squad"
    t.string   "youthSquads"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sport_doctors", :force => true do |t|
    t.string   "imagePath"
    t.string   "name"
    t.string   "surname"
    t.text     "description"
    t.string   "address"
    t.integer  "plz"
    t.string   "city"
    t.float    "price"
    t.string   "profession"
    t.string   "subjectArea"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sport_facilities", :force => true do |t|
    t.string   "imagePath"
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.integer  "plz"
    t.string   "city"
    t.float    "price"
    t.text     "openingHours"
    t.text     "sportTypes"
    t.text     "events"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sport_trainers", :force => true do |t|
    t.string   "imagePath"
    t.string   "name"
    t.string   "surname"
    t.text     "description"
    t.string   "address"
    t.integer  "plz"
    t.string   "city"
    t.float    "price"
    t.text     "officeHours"
    t.string   "subjectArea"
    t.text     "focus"
    t.string   "phone"
    t.string   "sportFacility"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "imagePath"
    t.string   "name"
    t.string   "surname"
    t.string   "nickname"
    t.integer  "age"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.string   "address"
    t.integer  "plz"
    t.string   "city"
    t.text     "sportTypes"
    t.text     "officeHours"
    t.string   "trainingPlan"
    t.string   "nutritionPlan"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
