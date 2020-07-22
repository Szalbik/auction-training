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

ActiveRecord::Schema.define(version: 2020_07_22_100640) do

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
    t.bigint "user_auction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "buyer_id", null: false
    t.index ["buyer_id"], name: "index_bids_on_buyer_id"
    t.index ["user_auction_id"], name: "index_bids_on_user_auction_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_buyers_on_account_id"
  end

  create_table "group_users", force: :cascade do |t|
    t.bigint "seller_id", null: false
    t.bigint "group_id", null: false
    t.index ["group_id"], name: "index_group_users_on_group_id"
    t.index ["seller_id"], name: "index_group_users_on_seller_id"
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "seller_id", null: false
    t.index ["organization_id"], name: "index_groups_on_organization_id"
    t.index ["seller_id"], name: "index_groups_on_seller_id"
  end

  create_table "organization_users", force: :cascade do |t|
    t.bigint "seller_id", null: false
    t.bigint "organization_id", null: false
    t.index ["organization_id"], name: "index_organization_users_on_organization_id"
    t.index ["seller_id"], name: "index_organization_users_on_seller_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "seller_id", null: false
    t.index ["seller_id"], name: "index_organizations_on_seller_id"
  end

  create_table "product_role_assignments", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.bigint "group_id", null: false
    t.bigint "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_product_role_assignments_on_group_id"
    t.index ["organization_id"], name: "index_product_role_assignments_on_organization_id"
    t.index ["seller_id"], name: "index_product_role_assignments_on_seller_id"
  end

  create_table "product_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_role_assignment_id", null: false
    t.index ["product_role_assignment_id"], name: "index_product_roles_on_product_role_assignment_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "seller_id", null: false
    t.bigint "group_id"
    t.bigint "product_role_id", null: false
    t.index ["group_id"], name: "index_products_on_group_id"
    t.index ["product_role_id"], name: "index_products_on_product_role_id"
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_sellers_on_account_id"
  end

  create_table "user_auctions", force: :cascade do |t|
    t.datetime "finished_at"
    t.string "name"
    t.string "description"
    t.decimal "minimal_price", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "owner_type", null: false
    t.bigint "owner_id", null: false
    t.bigint "product_id", null: false
    t.index ["owner_type", "owner_id"], name: "index_user_auctions_on_owner_type_and_owner_id"
    t.index ["product_id"], name: "index_user_auctions_on_product_id"
  end

  add_foreign_key "bids", "buyers"
  add_foreign_key "bids", "user_auctions"
  add_foreign_key "buyers", "accounts"
  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "sellers"
  add_foreign_key "groups", "organizations"
  add_foreign_key "groups", "sellers"
  add_foreign_key "organization_users", "organizations"
  add_foreign_key "organization_users", "sellers"
  add_foreign_key "organizations", "sellers"
  add_foreign_key "product_role_assignments", "groups"
  add_foreign_key "product_role_assignments", "organizations"
  add_foreign_key "product_role_assignments", "sellers"
  add_foreign_key "product_roles", "product_role_assignments"
  add_foreign_key "products", "groups"
  add_foreign_key "products", "product_roles"
  add_foreign_key "products", "sellers"
  add_foreign_key "sellers", "accounts"
  add_foreign_key "user_auctions", "products"
end
