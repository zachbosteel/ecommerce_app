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

ActiveRecord::Schema.define(version: 20150616022208) do

  create_table "carted_products", force: :cascade do |t|
    t.string   "status",     limit: 255
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.integer  "quantity",   limit: 4
    t.integer  "order_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categorized_products", force: :cascade do |t|
    t.integer  "product_id",  limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.integer  "product_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.decimal  "total_price",              precision: 10, scale: 2
    t.decimal  "subtotal_price",           precision: 10, scale: 2
    t.decimal  "tax",                      precision: 10, scale: 2
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.decimal  "price",                     precision: 12, scale: 2
    t.text     "description", limit: 65535
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.boolean  "in_stock",    limit: 1,                              default: true
    t.integer  "supplier_id", limit: 4
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "supplier_name",         limit: 255
    t.string   "supplier_email",        limit: 255
    t.string   "supplier_phone_number", limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
