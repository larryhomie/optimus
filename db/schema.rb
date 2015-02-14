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

ActiveRecord::Schema.define(:version => 20130814220302) do

  create_table "celebs", :force => true do |t|
    t.string   "firstname",         :null => false
    t.string   "lastname",          :null => false
    t.string   "othername"
    t.string   "knownname",         :null => false
    t.string   "sex",               :null => false
    t.text     "bio"
    t.string   "image"
    t.string   "hometown"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.boolean  "birthday_accurate"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "email"
    t.string   "home_country"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "movie_roles", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "celeb_id"
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "movie_roles", ["celeb_id"], :name => "index_movie_roles_on_celeb_id"
  add_index "movie_roles", ["movie_id"], :name => "index_movie_roles_on_movie_id"

  create_table "movies", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "story"
    t.string   "image"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.integer  "duration"
    t.string   "rating"
    t.string   "iroko"
    t.string   "youtube"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
