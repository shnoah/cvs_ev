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

ActiveRecord::Schema.define(version: 20151004053112) do

  create_table "reviews", force: :cascade do |t|
    t.integer  "hits"
    t.integer  "like"
    t.string   "post_name"
    t.string   "post_pwd"
    t.string   "post_title"
    t.text     "post_content"
    t.string   "category"
    t.string   "store_info"
    t.string   "prefer_time"
    t.string   "price"
    t.string   "kcal"
    t.string   "my_image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end