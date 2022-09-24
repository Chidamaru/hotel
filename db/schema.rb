# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_22_154803) do

  create_table "logins", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_logins_on_email", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "room_name"
    t.string "introduction"
    t.decimal "price"
    t.string "address"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "login_id", null: false
    t.integer "post_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "price"
    t.integer "Count"
    t.index ["login_id"], name: "index_reservations_on_login_id"
    t.index ["post_id"], name: "index_reservations_on_post_id"
  end

  add_foreign_key "reservations", "logins"
  add_foreign_key "reservations", "posts"
end
