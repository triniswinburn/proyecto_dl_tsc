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

ActiveRecord::Schema.define(version: 20170130204403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.integer  "phone"
    t.string   "photo"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id", using: :btree
  end

  create_table "fav_houses", force: :cascade do |t|
    t.integer  "house_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_favs_on_house_id", using: :btree
    t.index ["user_id"], name: "index_favs_on_user_id", using: :btree
  end

  create_table "house_builds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "house_sizes", force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "house_values", force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.integer  "mts"
    t.string   "description"
    t.integer  "price"
    t.string   "photo"
    t.boolean  "fav"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "region_id"
    t.integer  "house_size_id"
    t.integer  "house_value_id"
    t.integer  "house_build_id"
    t.index ["company_id"], name: "index_houses_on_company_id", using: :btree
    t.index ["house_build_id"], name: "index_houses_on_house_build_id", using: :btree
    t.index ["house_size_id"], name: "index_houses_on_house_size_id", using: :btree
    t.index ["house_value_id"], name: "index_houses_on_house_value_id", using: :btree
    t.index ["region_id"], name: "index_houses_on_region_id", using: :btree
    t.index ["user_id"], name: "index_houses_on_user_id", using: :btree
  end

  create_table "quotations", force: :cascade do |t|
    t.string   "subject"
    t.string   "message"
    t.integer  "user_id"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_quotations_on_house_id", using: :btree
    t.index ["user_id"], name: "index_quotations_on_user_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.string   "photo"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "company"
    t.integer  "house"
    t.integer  "company_id"
    t.integer  "house_id"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["company_id"], name: "index_sellers_on_company_id", using: :btree
    t.index ["house_id"], name: "index_sellers_on_house_id", using: :btree
    t.index ["reset_password_token"], name: "index_sellers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.string   "photo"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "role"
    t.string   "uid"
    t.string   "provider"
    t.string   "image"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "companies", "users"
  add_foreign_key "favs", "houses"
  add_foreign_key "favs", "users"
  add_foreign_key "houses", "companies"
  add_foreign_key "houses", "house_builds"
  add_foreign_key "houses", "house_sizes"
  add_foreign_key "houses", "house_values"
  add_foreign_key "houses", "regions"
  add_foreign_key "houses", "users"
  add_foreign_key "quotations", "houses"
  add_foreign_key "quotations", "users"
  add_foreign_key "sellers", "companies"
  add_foreign_key "sellers", "houses"
end
