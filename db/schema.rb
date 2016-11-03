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

ActiveRecord::Schema.define(version: 20161103054259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  create_table "discounts", force: :cascade do |t|
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "generals", force: :cascade do |t|
    t.string   "address"
    t.string   "phone"
    t.text     "description"
    t.string   "opening_hours"
    t.string   "vk"
    t.string   "fb"
    t.string   "instagram"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email"
    t.string   "monday"
    t.string   "thuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.string   "name"
    t.text     "upper_text"
    t.text     "lower_text"
    t.string   "first_image"
    t.string   "second_image"
  end

  create_table "masters", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_masters_on_category_id", using: :btree
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "image"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_pictures_on_service_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "picture"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "price"
    t.index ["category_id"], name: "index_services_on_category_id", using: :btree
    t.index ["subcategory_id"], name: "index_services_on_subcategory_id", using: :btree
  end

  create_table "settings", force: :cascade do |t|
    t.string   "address"
    t.string   "phone"
    t.text     "description"
    t.string   "opening_hours"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "static_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "sp_category"
  end

  create_table "subcategories", force: :cascade do |t|
    t.text     "description"
    t.string   "picture"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.index ["category_id"], name: "index_subcategories_on_category_id", using: :btree
  end

  add_foreign_key "masters", "categories"
  add_foreign_key "pictures", "services"
  add_foreign_key "services", "categories"
  add_foreign_key "services", "subcategories"
  add_foreign_key "subcategories", "categories"
end
