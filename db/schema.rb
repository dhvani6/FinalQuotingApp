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

ActiveRecord::Schema.define(version: 2019_07_22_045337) do

  create_table "attachments", force: :cascade do |t|
    t.string "attachment_feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_fname"
    t.string "customer_lname"
    t.string "customer_phone"
    t.string "customer_address"
    t.string "customer_city"
    t.string "customer_state"
    t.string "customer_zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.decimal "discount_percentage", precision: 18, scale: 0
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_fname"
    t.string "employee_lname"
    t.string "employee_phone"
    t.string "store_location"
    t.boolean "is_manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_attachments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_implements", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_tires", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implements", force: :cascade do |t|
    t.string "implement_feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_prices", force: :cascade do |t|
    t.decimal "suggested_list_price", precision: 18, scale: 0
    t.datetime "price_change_date"
    t.decimal "new_price", precision: 18, scale: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "manufacturer_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "model_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_histories", force: :cascade do |t|
    t.decimal "past_price", precision: 18, scale: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "base_quote_price", precision: 18, scale: 0
    t.decimal "total_price", precision: 18, scale: 0
    t.datetime "quote_date"
    t.decimal "markup_percentage", precision: 18, scale: 0
    t.datetime "finalize_date"
    t.boolean "sale_finalized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "series_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specific_equipments", force: :cascade do |t|
    t.string "serial_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tire_replacement_fronts", force: :cascade do |t|
    t.string "front_tires"
    t.string "order_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tire_replacement_rears", force: :cascade do |t|
    t.string "rear_tires"
    t.string "order_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
