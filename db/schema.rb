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

ActiveRecord::Schema.define(version: 20160127110500) do

  create_table "flag_layers", force: :cascade do |t|
    t.integer  "flag_id"
    t.string   "template_name"
    t.string   "color01"
    t.string   "color02"
    t.string   "color03"
    t.string   "color04"
    t.string   "color05"
    t.string   "color06"
    t.string   "accent_color01"
    t.string   "accent_color02"
    t.string   "accent_color03"
    t.string   "accent_color04"
    t.string   "accent_color05"
    t.string   "accent_color06"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "width"
    t.integer  "height"
    t.integer  "sortorder"
    t.boolean  "is_base_layer"
    t.text     "target_css"
    t.text     "target_property"
  end

  create_table "flags", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "base_layer_id"
  end

end
