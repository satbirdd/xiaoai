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

ActiveRecord::Schema.define(version: 20140808024248) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_properties", force: true do |t|
    t.integer  "item_id"
    t.integer  "property_id"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_properties", ["property_id"], name: "index_item_properties_on_property_id"

  create_table "item_property_items", force: true do |t|
    t.integer  "property_item_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_property_items", ["item_id"], name: "index_item_property_items_on_item_id"
  add_index "item_property_items", ["property_item_id"], name: "index_item_property_items_on_property_item_id"

  create_table "items", force: true do |t|
    t.integer  "shop_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["product_id"], name: "index_items_on_product_id"
  add_index "items", ["shop_id"], name: "index_items_on_shop_id"

  create_table "line_properties", force: true do |t|
    t.integer  "targetable_id"
    t.string   "targetable_type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_property_items", force: true do |t|
    t.string   "name"
    t.integer  "line_property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"

  create_table "properties", force: true do |t|
    t.string   "name"
    t.integer  "targetable_id"
    t.string   "targetable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_items", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_id"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["user_id"], name: "index_shops_on_user_id"

  create_table "users", force: true do |t|
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
