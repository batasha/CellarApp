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

ActiveRecord::Schema.define(:version => 20130531141245) do

  create_table "bins", :force => true do |t|
    t.string   "number"
    t.integer  "capacity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "bins", ["user_id"], :name => "index_bins_on_user_id"

  create_table "storage_locations", :force => true do |t|
    t.integer "wine_id"
    t.integer "bin_id"
    t.integer "quantity"
  end

  add_index "storage_locations", ["bin_id"], :name => "index_storage_locations_on_bin_id"
  add_index "storage_locations", ["wine_id"], :name => "index_storage_locations_on_wine_id"

  create_table "tasting_notes", :force => true do |t|
    t.integer  "wine_id"
    t.date     "date"
    t.text     "note"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "tasting_notes", ["user_id"], :name => "index_tasting_notes_on_user_id"
  add_index "tasting_notes", ["wine_id"], :name => "index_tasting_notes_on_wine_id"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "wines", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "color"
    t.integer  "vintage"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "wines", ["user_id"], :name => "index_wines_on_user_id"

end
