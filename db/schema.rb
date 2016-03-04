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

ActiveRecord::Schema.define(version: 20160304144105) do

  create_table "flag_layers", force: :cascade do |t|
    t.integer  "flag_id"
    t.string   "template_name"
    t.string   "color1"
    t.string   "color2"
    t.string   "color3"
    t.string   "color4"
    t.string   "color5"
    t.string   "color6"
    t.string   "stroke1"
    t.string   "stroke2"
    t.string   "stroke3"
    t.string   "stroke4"
    t.string   "stroke5"
    t.string   "stroke6"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "width"
    t.integer  "height"
    t.integer  "sortorder"
    t.boolean  "is_base_layer", default: false
    t.integer  "max_colors",    default: 0
    t.integer  "max_strokes",   default: 0
    t.boolean  "is_template"
  end

  create_table "flags", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "base_layer_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nick"
    t.string   "provider"
  end

end
