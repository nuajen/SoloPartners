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

ActiveRecord::Schema.define(version: 2019_05_06_071330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.bigint "subcategory_id"
    t.bigint "user_id"
    t.index ["subcategory_id"], name: "index_interests_on_subcategory_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "place_id"
    t.index ["place_id"], name: "index_matches_on_place_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "country"
    t.string "city"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "age"
    t.integer "lenght_of_stay"
    t.string "about_me"
    t.string "name"
    t.bigint "place_id"
    t.string "lastname"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["place_id"], name: "index_users_on_place_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "interests", "subcategories"
  add_foreign_key "interests", "users"
  add_foreign_key "matches", "places"
  add_foreign_key "matches", "users"
  add_foreign_key "messages", "users"
  add_foreign_key "users", "places"
end
