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

ActiveRecord::Schema.define(version: 2023_02_16_053312) do

  create_table "favorites", force: :cascade do |t|
    t.integer "property_id"
    t.integer "user_id"
  end

  create_table "landlords", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "price_per_night"
    t.boolean "available"
    t.integer "user_id"
    t.integer "landlord_id"
    t.string "image"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "text"
    t.integer "user_id"
    t.integer "property_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
  end

end
