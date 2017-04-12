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

ActiveRecord::Schema.define(version: 20170412122300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.integer  "subcategory_id"
    t.text     "description"
    t.float    "price"
    t.string   "duration"
    t.string   "max_people"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subcategory_id"], name: "index_courses_on_subcategory_id", using: :btree
  end

  create_table "discounts", force: :cascade do |t|
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "doctypes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "document_id"
    t.index ["document_id"], name: "index_doctypes_on_document_id", using: :btree
  end

  create_table "document_services", force: :cascade do |t|
    t.integer  "document_id"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_document_services_on_document_id", using: :btree
    t.index ["service_id"], name: "index_document_services_on_service_id", using: :btree
  end

  create_table "documents", force: :cascade do |t|
    t.string   "type"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "doctype_id"
    t.index ["doctype_id"], name: "index_documents_on_doctype_id", using: :btree
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
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
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
    t.text     "footer_text"
    t.string   "instagram_hashtag"
    t.string   "logo"
  end

  create_table "instagram_helpers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "course_id"
    t.integer  "document_id"
    t.index ["course_id"], name: "index_pictures_on_course_id", using: :btree
    t.index ["document_id"], name: "index_pictures_on_document_id", using: :btree
    t.index ["service_id"], name: "index_pictures_on_service_id", using: :btree
  end

  create_table "postcategories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "postcategory_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "mainpic"
    t.index ["postcategory_id"], name: "index_posts_on_postcategory_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.string   "request_type"
    t.string   "name"
    t.string   "phone"
    t.string   "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "email"
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

  create_table "sliders", force: :cascade do |t|
    t.string   "image"
    t.string   "first_row"
    t.string   "second_row"
    t.string   "third_row"
    t.boolean  "right"
    t.boolean  "show_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.boolean  "show_on_landing"
    t.index ["category_id"], name: "index_subcategories_on_category_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "courses", "subcategories"
  add_foreign_key "doctypes", "documents"
  add_foreign_key "document_services", "documents"
  add_foreign_key "document_services", "services"
  add_foreign_key "documents", "doctypes"
  add_foreign_key "masters", "categories"
  add_foreign_key "pictures", "courses"
  add_foreign_key "pictures", "documents"
  add_foreign_key "pictures", "services"
  add_foreign_key "posts", "postcategories"
  add_foreign_key "services", "categories"
  add_foreign_key "services", "subcategories"
  add_foreign_key "subcategories", "categories"
end
