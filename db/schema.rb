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

ActiveRecord::Schema.define(version: 2019_10_19_040947) do

  create_table "creditcards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "credit_number", null: false
    t.integer "limit_month", null: false
    t.integer "limit_year", null: false
    t.integer "security_number", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_creditcards_on_user_id"
  end

  create_table "delivery_addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "delivery_last_name", null: false
    t.string "delivery_first_name", null: false
    t.string "delivery_last_name_kana", null: false
    t.string "delivery_first_name_kana", null: false
    t.string "delivery_postal_code", null: false
    t.string "delivery_city", null: false
    t.string "delivery_address", null: false
    t.string "delivery_building"
    t.string "delivery_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prefecture_id", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_delivery_addresses_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname", null: false
    t.string "phone"
    t.string "profile"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "birth_year", null: false
    t.integer "birth_month", null: false
    t.integer "birth_day", null: false
    t.string "icon"
    t.boolean "active"
    t.integer "receivable"
    t.string "uid"
    t.string "provider"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "creditcards", "users"
  add_foreign_key "delivery_addresses", "users"
end
