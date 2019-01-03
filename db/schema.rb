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

ActiveRecord::Schema.define(version: 2019_01_03_094932) do

  create_table "user_accounts", force: :cascade do |t|
    t.string "user_email"
    t.string "user_password"
    t.string "user_first_name"
    t.string "user_last_name"
    t.integer "user_visit"
    t.integer "user_transaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sessions", force: :cascade do |t|
    t.string "IP_add"
    t.string "string"
    t.string "timestamp"
    t.string "time"
    t.string "cart_number"
    t.string "integer"
    t.string "user_account_id"
    t.integer "user_visit"
    t.float "user_transaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
