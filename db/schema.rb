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

ActiveRecord::Schema.define(version: 2019_07_23_203247) do

  create_table "attachments", force: :cascade do |t|
    t.varchar "attachment_feature", limit: 45, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade do |t|
    t.varchar "customer_fname", limit: 35, null: false
    t.varchar "customer_lname", limit: 35, null: false
    t.varchar "customer_phone", limit: 12, null: false
    t.varchar "customer_address", limit: 35, null: false
    t.varchar "customer_city", limit: 21
    t.varchar "customer_state", limit: 2, null: false
    t.varchar "customer_zip", limit: 5, null: false
    t.bigint "fk_employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "employee_id"
    t.index ["employee_id"], name: "index_customers_on_employee_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.decimal "discount_percentage", precision: 4, scale: 2, null: false
    t.varchar "description", limit: 80, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.varchar "employee_fname", limit: 35, null: false
    t.varchar "employee_lname", limit: 35, null: false
    t.varchar "employee_phone", limit: 12, null: false
    t.varchar "store_location", limit: 15, null: false
    t.boolean "is_manager", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_attachments", force: :cascade do |t|
    t.bigint "fk_attachment_id", null: false
    t.bigint "fk_model_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_implements", force: :cascade do |t|
    t.bigint "fk_implement_id", null: false
    t.bigint "fk_model_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_tires", force: :cascade do |t|
    t.bigint "fk_tiref_id"
    t.bigint "fk_tirer_id"
    t.bigint "fk_model_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "implements", force: :cascade do |t|
    t.varchar "implement_feature", limit: 45, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "list_prices", force: :cascade do |t|
    t.decimal "suggested_list_price", precision: 7, scale: 2, null: false
    t.datetime "price_change_date"
    t.decimal "new_price", precision: 7, scale: 2
    t.bigint "fk_implement_id"
    t.bigint "fk_attachment_id"
    t.bigint "fk_model_id"
    t.bigint "fk_tiref_id"
    t.bigint "fk_tirer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.varchar "manufacturer_name", limit: 15, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: :cascade do |t|
    t.varchar "model_number", limit: 21, null: false
    t.bigint "fk_series_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_histories", force: :cascade do |t|
    t.decimal "past_price", precision: 7, scale: 2, null: false
    t.bigint "fk_price_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "base_quote_price", precision: 7, scale: 2, null: false
    t.decimal "total_price", precision: 7, scale: 2
    t.datetime "quote_date", null: false
    t.decimal "markup_percentage", precision: 4, scale: 2, null: false
    t.datetime "finalize_date"
    t.boolean "sale_finalized", null: false
    t.bigint "fk_discount_id"
    t.bigint "fk_customer_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.varchar "series_number", limit: 21, null: false
    t.bigint "fk_manufacturer_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specific_equipments", force: :cascade do |t|
    t.varchar "serial_number", limit: 21, null: false
    t.bigint "fk_model_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tire_replacement_fronts", force: :cascade do |t|
    t.varchar "front_tires", limit: 48, null: false
    t.varchar "order_number", limit: 21, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tire_replacement_rears", force: :cascade do |t|
    t.varchar "rear_tires", limit: 48, null: false
    t.varchar "order_number", limit: 21, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "customers", "customers", column: "fk_employee_id", name: "FK_customers_customers"
  add_foreign_key "customers", "employees"
  add_foreign_key "equipment_attachments", "attachments", column: "fk_attachment_id", name: "FK_equipment_attachments_attachments"
  add_foreign_key "equipment_attachments", "models", column: "fk_model_id", name: "FK_equipment_attachments_models"
  add_foreign_key "equipment_implements", "implements", column: "fk_implement_id", name: "FK_equipment_implements_implements"
  add_foreign_key "equipment_implements", "models", column: "fk_model_id", name: "FK_equipment_implements_models"
  add_foreign_key "equipment_tires", "models", column: "fk_model_id", name: "FK_equipment_tires_models"
  add_foreign_key "equipment_tires", "tire_replacement_fronts", column: "fk_tiref_id", name: "FK_equipment_tires_tire_replacement_fronts"
  add_foreign_key "equipment_tires", "tire_replacement_rears", column: "fk_tirer_id", name: "FK_equipment_tires_tire_replacement_rears"
  add_foreign_key "list_prices", "attachments", column: "fk_attachment_id", name: "FK_list_prices_attachments"
  add_foreign_key "list_prices", "implements", column: "fk_implement_id", name: "FK_list_prices_implements"
  add_foreign_key "list_prices", "models", column: "fk_model_id", name: "FK_list_prices_models"
  add_foreign_key "list_prices", "tire_replacement_fronts", column: "fk_tiref_id", name: "FK_list_prices_tire_replacement_fronts"
  add_foreign_key "list_prices", "tire_replacement_rears", column: "fk_tirer_id", name: "FK_list_prices_tire_replacement_rears"
  add_foreign_key "models", "series", column: "fk_series_id", name: "FK_models_series"
  add_foreign_key "price_histories", "list_prices", column: "fk_price_id", name: "FK_price_histories_list_prices"
  add_foreign_key "quotes", "customers"
  add_foreign_key "quotes", "customers", column: "fk_customer_id", name: "FK_quotes_customers"
  add_foreign_key "quotes", "discounts", column: "fk_discount_id", name: "FK_quotes_discounts"
  add_foreign_key "series", "manufacturers", column: "fk_manufacturer_id", name: "FK_series_manufacturers"
  add_foreign_key "specific_equipments", "models", column: "fk_model_id", name: "FK_specific_equipments_models"
end
