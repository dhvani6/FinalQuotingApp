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

ActiveRecord::Schema.define(version: 2019_07_28_042439) do

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "attachment_id"
    t.index ["attachment_id"], name: "index_equipment_attachments_on_attachment_id"
  end

  create_table "equipment_implements", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "implement_id"
    t.index ["implement_id"], name: "index_equipment_implements_on_implement_id"
  end

  create_table "equipment_tires", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "tire_replacement_front_id"
    t.bigint "tire_replacement_rear_id"
    t.index ["tire_replacement_front_id"], name: "index_equipment_tires_on_tire_replacement_front_id"
    t.index ["tire_replacement_rear_id"], name: "index_equipment_tires_on_tire_replacement_rear_id"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "attachment_id"
    t.bigint "Tire_Replacement_Front_id"
    t.bigint "implement_id"
    t.bigint "Tire_Replacement_Rear_id"
    t.bigint "model_id"
    t.index ["Tire_Replacement_Front_id"], name: "index_list_prices_on_Tire_Replacement_Front_id"
    t.index ["Tire_Replacement_Rear_id"], name: "index_list_prices_on_Tire_Replacement_Rear_id"
    t.index ["attachment_id"], name: "index_list_prices_on_attachment_id"
    t.index ["implement_id"], name: "index_list_prices_on_implement_id"
    t.index ["model_id"], name: "index_list_prices_on_model_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.varchar "manufacturer_name", limit: 15, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: :cascade do |t|
    t.varchar "model_number", limit: 21, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "series_id"
    t.index ["series_id"], name: "index_models_on_series_id"
  end

  create_table "price_histories", force: :cascade do |t|
    t.decimal "past_price", precision: 7, scale: 2, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quote_configs", force: :cascade do |t|
    t.decimal "min_markup", precision: 18, scale: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quoteconfigs", force: :cascade do |t|
    t.decimal "min_markup", precision: 18, scale: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "base_quote_price", precision: 7, scale: 2, null: false
    t.decimal "total_price", precision: 7, scale: 2
    t.datetime "quote_date", null: false
    t.decimal "markup_percentage", precision: 4, scale: 2, null: false
    t.datetime "finalize_date"
    t.boolean "sale_finalized", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "customer_id"
    t.bigint "manufacturer_id"
    t.bigint "series_id"
    t.bigint "model_id"
    t.bigint "tire_replacement_front_id"
    t.bigint "tire_replacement_rear_id"
    t.bigint "implement_id"
    t.bigint "attachment_id"
    t.bigint "configuration_id"
    t.bigint "list_price_id"
    t.bigint "quoteconfig_id"
    t.bigint "quote_config_id"
    t.index ["attachment_id"], name: "index_quotes_on_attachment_id"
    t.index ["configuration_id"], name: "index_quotes_on_configuration_id"
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
    t.index ["implement_id"], name: "index_quotes_on_implement_id"
    t.index ["list_price_id"], name: "index_quotes_on_list_price_id"
    t.index ["manufacturer_id"], name: "index_quotes_on_manufacturer_id"
    t.index ["model_id"], name: "index_quotes_on_model_id"
    t.index ["quote_config_id"], name: "index_quotes_on_quote_config_id"
    t.index ["quoteconfig_id"], name: "index_quotes_on_quoteconfig_id"
    t.index ["series_id"], name: "index_quotes_on_series_id"
    t.index ["tire_replacement_front_id"], name: "index_quotes_on_tire_replacement_front_id"
    t.index ["tire_replacement_rear_id"], name: "index_quotes_on_tire_replacement_rear_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.varchar "series_number", limit: 21, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "manufacturer_id"
    t.index ["manufacturer_id"], name: "index_series_on_manufacturer_id"
  end

  create_table "specific_equipments", force: :cascade do |t|
    t.varchar "serial_number", limit: 21, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "quote_id"
    t.index ["quote_id"], name: "index_specific_equipments_on_quote_id"
  end

  create_table "sysdiagrams", primary_key: "diagram_id", id: :integer, force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
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

  add_foreign_key "customers", "employees"
  add_foreign_key "equipment_attachments", "attachments"
  add_foreign_key "equipment_implements", "implements"
  add_foreign_key "equipment_tires", "tire_replacement_fronts"
  add_foreign_key "equipment_tires", "tire_replacement_rears"
  add_foreign_key "list_prices", "attachments"
  add_foreign_key "list_prices", "implements"
  add_foreign_key "list_prices", "models"
  add_foreign_key "list_prices", "tire_replacement_fronts", column: "Tire_Replacement_Front_id"
  add_foreign_key "list_prices", "tire_replacement_rears", column: "Tire_Replacement_Rear_id"
  add_foreign_key "models", "series"
  add_foreign_key "quotes", "attachments"
  add_foreign_key "quotes", "customers", name: "FK_Quote_Employee"
  add_foreign_key "quotes", "implements"
  add_foreign_key "quotes", "list_prices"
  add_foreign_key "quotes", "manufacturers"
  add_foreign_key "quotes", "models"
  add_foreign_key "quotes", "quote_configs"
  add_foreign_key "quotes", "quoteconfigs"
  add_foreign_key "quotes", "series"
  add_foreign_key "quotes", "tire_replacement_fronts"
  add_foreign_key "quotes", "tire_replacement_rears"
  add_foreign_key "series", "manufacturers"
  add_foreign_key "specific_equipments", "quotes"
end
