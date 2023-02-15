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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_064908) do
  create_table "devices", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temperatures", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "devices_id", null: false
    t.float "temp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["devices_id"], name: "index_temperatures_on_devices_id"
  end

  create_table "water_temperatures", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "devices_id", null: false
    t.float "w_temp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["devices_id"], name: "index_water_temperatures_on_devices_id"
  end

  add_foreign_key "temperatures", "devices", column: "devices_id"
  add_foreign_key "water_temperatures", "devices", column: "devices_id"
end
