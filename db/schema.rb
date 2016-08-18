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

ActiveRecord::Schema.define(version: 20160818214709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "brands_photos", id: false, force: :cascade do |t|
    t.integer "brand_id", null: false
    t.integer "photo_id", null: false
  end

  add_index "brands_photos", ["brand_id", "photo_id"], name: "index_brands_photos_on_brand_id_and_photo_id", using: :btree
  add_index "brands_photos", ["photo_id", "brand_id"], name: "index_brands_photos_on_photo_id_and_brand_id", using: :btree

  create_table "brands_products", id: false, force: :cascade do |t|
    t.integer "brand_id",   null: false
    t.integer "product_id", null: false
  end

  add_index "brands_products", ["brand_id", "product_id"], name: "index_brands_products_on_brand_id_and_product_id", using: :btree
  add_index "brands_products", ["product_id", "brand_id"], name: "index_brands_products_on_product_id_and_brand_id", using: :btree

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "features_photos", id: false, force: :cascade do |t|
    t.integer "feature_id", null: false
    t.integer "photo_id",   null: false
  end

  add_index "features_photos", ["feature_id", "photo_id"], name: "index_features_photos_on_feature_id_and_photo_id", using: :btree
  add_index "features_photos", ["photo_id", "feature_id"], name: "index_features_photos_on_photo_id_and_feature_id", using: :btree

  create_table "features_products", id: false, force: :cascade do |t|
    t.integer "feature_id", null: false
    t.integer "product_id", null: false
  end

  add_index "features_products", ["feature_id", "product_id"], name: "index_features_products_on_feature_id_and_product_id", using: :btree
  add_index "features_products", ["product_id", "feature_id"], name: "index_features_products_on_product_id_and_feature_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "photos_products", id: false, force: :cascade do |t|
    t.integer "photo_id",   null: false
    t.integer "product_id", null: false
  end

  add_index "photos_products", ["photo_id", "product_id"], name: "index_photos_products_on_photo_id_and_product_id", using: :btree
  add_index "photos_products", ["product_id", "photo_id"], name: "index_photos_products_on_product_id_and_photo_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
