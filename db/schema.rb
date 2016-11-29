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

ActiveRecord::Schema.define(version: 20161129003435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "favs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_favs_on_house_id", using: :btree
    t.index ["user_id"], name: "index_favs_on_user_id", using: :btree
  end

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.integer  "mts"
    t.string   "description"
    t.integer  "price"
    t.integer  "region"
    t.string   "photo"
    t.boolean  "fav"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_houses_on_company_id", using: :btree
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

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies", "users"
  add_foreign_key "favs", "houses"
  add_foreign_key "favs", "users"
  add_foreign_key "houses", "companies"
  add_foreign_key "houses", "users"
  add_foreign_key "quotations", "houses"
  add_foreign_key "quotations", "users"
end
