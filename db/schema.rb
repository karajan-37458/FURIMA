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

ActiveRecord::Schema.define(version: 2020_06_30_101115) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "given_name", null: false
    t.string "family_name_kana", null: false
    t.string "given_name_kana", null: false
    t.string "postal", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "house_number", null: false
    t.string "building_name"
    t.integer "room_number"
    t.integer "phone_number"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image", null: false
    t.string "name", null: false
    t.text "text", null: false
    t.bigint "category_id_id", null: false
    t.bigint "brand_id_id"
    t.string "status", null: false
    t.string "charges", null: false
    t.integer "price", null: false
    t.string "postage", null: false
    t.string "area", null: false
    t.string "day", null: false
    t.bigint "user_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id_id"], name: "index_products_on_brand_id_id"
    t.index ["category_id_id"], name: "index_products_on_category_id_id"
    t.index ["user_id_id"], name: "index_products_on_user_id_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "family_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name", null: false
    t.string "first_name_kana", null: false
    t.date "birth_day", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "users"
end
