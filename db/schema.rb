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

ActiveRecord::Schema.define(version: 20151228131159) do

  create_table "caremanagers", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "sex"
    t.date     "birth"
    t.integer  "age"
    t.string   "postal_code"
    t.text     "address"
    t.string   "phone_num"
    t.string   "mail"
    t.string   "company"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cus_families", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "relation"
    t.string   "living"
    t.text     "address"
    t.string   "contact"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cus_families", ["customer_id"], name: "index_cus_families_on_customer_id"

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "sex"
    t.date     "birth"
    t.integer  "age"
    t.string   "postal_code"
    t.text     "address"
    t.string   "phone_num"
    t.string   "home_num"
    t.string   "mail"
    t.string   "role"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
