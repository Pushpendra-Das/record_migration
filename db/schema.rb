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

ActiveRecord::Schema.define(version: 2022_05_15_032937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apples", force: :cascade do |t|
    t.string "variety"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.text "description"
  end

  create_table "categorization", id: false, force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "category_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.integer "customer_number"
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "product_id", null: false
  end

  create_table "product_tables", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "price"
  end

  create_table "productions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.bigint "user_id", null: false
    t.decimal "price", precision: 5, scale: 2
    t.string "supplier_type", null: false
    t.bigint "supplier_id", null: false
    t.string "upc_code"
    t.text "part_number"
    t.index ["part_number"], name: "index_products_on_part_number"
    t.index ["supplier_type", "supplier_id"], name: "index_products_on_supplier_type_and_supplier_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "provisions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_provisions_on_name"
  end

  create_table "roles", force: :cascade do |t|
    t.string "user_role"
    t.text "descrip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "to_dos", force: :cascade do |t|
    t.string "task"
    t.integer "task_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  add_foreign_key "products", "users"
end
