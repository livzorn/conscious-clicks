# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_02_145534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.string "link"
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "category"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "message_sets", force: :cascade do |t|
    t.string "theme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.boolean "public", default: false
    t.hstore "messages", default: {}, null: false
    t.index ["user_id"], name: "index_message_sets_on_user_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "emoji"
    t.string "name"
    t.integer "happiness_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_message_sets", force: :cascade do |t|
    t.bigint "message_set_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_set_id"], name: "index_user_message_sets_on_message_set_id"
    t.index ["user_id"], name: "index_user_message_sets_on_user_id"
  end

  create_table "user_moods", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.bigint "mood_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mood_id"], name: "index_user_moods_on_mood_id"
    t.index ["user_id"], name: "index_user_moods_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "current_message_date"
    t.string "color", default: "#A5B8FF"
    t.hstore "current_message", default: {}, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmarks", "users"
  add_foreign_key "goals", "users"
  add_foreign_key "message_sets", "users"
  add_foreign_key "user_message_sets", "message_sets"
  add_foreign_key "user_message_sets", "users"
  add_foreign_key "user_moods", "moods"
  add_foreign_key "user_moods", "users"
end
