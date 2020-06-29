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

ActiveRecord::Schema.define(version: 2020_06_29_075439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "bids", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2
    t.bigint "account_id", null: false
    t.bigint "user_auction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_bids_on_account_id"
    t.index ["user_auction_id"], name: "index_bids_on_user_auction_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10, scale: 2
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_products_on_account_id"
  end

  create_table "user_auctions", force: :cascade do |t|
    t.datetime "finished_at"
    t.string "name"
    t.string "description"
    t.decimal "minimal_price"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id", null: false
    t.index ["account_id"], name: "index_user_auctions_on_account_id"
    t.index ["product_id"], name: "index_user_auctions_on_product_id"
  end

  add_foreign_key "bids", "accounts"
  add_foreign_key "bids", "user_auctions"
  add_foreign_key "products", "accounts"
  add_foreign_key "user_auctions", "accounts"
  add_foreign_key "user_auctions", "products"
end
