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

ActiveRecord::Schema.define(:version => 20140128062349) do

  create_table "atmospheres", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "detaileds", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "sort"
  end

  create_table "num_of_people", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rent_envs", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "space_settings", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spaces", :force => true do |t|
    t.integer  "space_setting_id", :limit => 255
    t.integer  "user_group_id",    :limit => 255
    t.integer  "rent_env_id",      :limit => 255
    t.integer  "num_of_people_id", :limit => 255
    t.integer  "city_id",          :limit => 255
    t.decimal  "price_hour",                      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_day",                       :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_month",                     :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_year",                      :precision => 8, :scale => 2, :default => 0.0
    t.string   "title"
    t.text     "content"
    t.string   "photo"
    t.string   "detailed"
    t.datetime "created_at",                                                                     :null => false
    t.datetime "updated_at",                                                                     :null => false
    t.text     "rule"
    t.integer  "atmosphere_id"
  end

  create_table "user_groups", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
