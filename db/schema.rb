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

ActiveRecord::Schema.define(version: 20140225220018) do

  create_table "boards", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.integer  "list_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["list_id"], name: "index_cards_on_list_id"

  create_table "lists", force: true do |t|
    t.integer  "board_id"
    t.string   "title"
    t.integer  "limit",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["board_id"], name: "index_lists_on_board_id"

  create_table "todos", force: true do |t|
    t.integer  "card_id"
    t.string   "title"
    t.boolean  "completed",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "todos", ["card_id"], name: "index_todos_on_card_id"

  create_table "users", force: true do |t|
    t.integer  "card_id"
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["card_id"], name: "index_users_on_card_id"

end
