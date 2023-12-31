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

ActiveRecord::Schema[7.0].define(version: 2023_07_06_084023) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stores", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.float "length", null: false
    t.float "width", null: false
    t.float "height", null: false
    t.bigint "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_stores_on_code", unique: true
    t.index ["warehouse_id"], name: "warehouse_on_stores_indx"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_warehouses_on_code", unique: true
  end

  add_foreign_key "stores", "warehouses"
end
