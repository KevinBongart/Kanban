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

ActiveRecord::Schema.define(:version => 20111128060848) do

  create_table "attached_copies", :force => true do |t|
    t.text     "content"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attached_images", :force => true do |t|
    t.string   "url"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "limit"
  end

  create_table "stories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "project_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "icebox",      :default => false
    t.boolean  "fast_lane",   :default => false
    t.integer  "position"
    t.integer  "user_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "done",       :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "story_id"
    t.integer  "state_id",   :default => 0
  end

end
