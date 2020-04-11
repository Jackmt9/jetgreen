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

ActiveRecord::Schema.define(version: 2020_04_11_173152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ffs", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_ffs_on_flight_id"
    t.index ["food_id"], name: "index_ffs_on_food_id"
  end

  create_table "flights", force: :cascade do |t|
    t.bigint "plane_id", null: false
    t.string "status", default: "ON TIME"
    t.string "depart"
    t.string "arrive"
    t.datetime "departure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plane_id"], name: "index_flights_on_plane_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "dish"
    t.bigint "meal_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_type_id"], name: "index_foods_on_meal_type_id"
  end

  create_table "meal_types", force: :cascade do |t|
    t.string "meal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mfs", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_mfs_on_flight_id"
    t.index ["movie_id"], name: "index_mfs_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "gender"
    t.string "phone"
    t.string "middle_name"
    t.string "suffix"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pfs", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.bigint "passenger_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_pfs_on_flight_id"
    t.index ["passenger_id"], name: "index_pfs_on_passenger_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string "model"
    t.integer "seat_count"
    t.boolean "wifi?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ffs", "flights"
  add_foreign_key "ffs", "foods"
  add_foreign_key "flights", "planes"
  add_foreign_key "foods", "meal_types"
  add_foreign_key "mfs", "flights"
  add_foreign_key "mfs", "movies"
  add_foreign_key "pfs", "flights"
  add_foreign_key "pfs", "passengers"
end
