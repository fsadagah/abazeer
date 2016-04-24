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

ActiveRecord::Schema.define(version: 20160423192715) do

  create_table "categories", force: true do |t|
    t.string   "name_en"
    t.string   "string"
    t.string   "name_ar"
    t.string   "thumb_url"
    t.string   "pano_url"
    t.boolean  "isactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: true do |t|
    t.text     "name_en"
    t.text     "desc_en"
    t.text     "price_en"
    t.text     "name_ar"
    t.text     "desc_ar"
    t.text     "price_ar"
    t.integer  "category_id"
    t.boolean  "isactive"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id_id"
    t.integer  "category0_id"
    t.integer  "category1_id"
    t.integer  "category2_id"
    t.integer  "category3_id"
    t.integer  "category4_id"
  end

  add_index "products", ["category0_id"], name: "index_products_on_category0_id"
  add_index "products", ["category1_id"], name: "index_products_on_category1_id"
  add_index "products", ["category2_id"], name: "index_products_on_category2_id"
  add_index "products", ["category3_id"], name: "index_products_on_category3_id"
  add_index "products", ["category4_id"], name: "index_products_on_category4_id"
  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["category_id_id"], name: "index_products_on_category_id_id"

end
