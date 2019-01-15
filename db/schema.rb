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

ActiveRecord::Schema.define(version: 2019_01_14_150651) do

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventory_item_categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.date "warehoused_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "inventory_item_category_id"
    t.integer "inventory_model_id"
    t.string "image"
    t.index ["inventory_item_category_id"], name: "index_inventory_items_on_inventory_item_category_id"
    t.index ["inventory_model_id"], name: "index_inventory_items_on_inventory_model_id"
  end

  create_table "inventory_models", force: :cascade do |t|
    t.string "inventory_model_name"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "order_line_items", force: :cascade do |t|
    t.integer "inventory_item_id"
    t.integer "order_id"
    t.integer "order_item_qty", default: 1
    t.float "total_price"
    t.float "order_line_item_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_item_id"], name: "index_order_line_items_on_inventory_item_id"
    t.index ["order_id"], name: "index_order_line_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.float "total_amount"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
