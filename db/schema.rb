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

ActiveRecord::Schema.define(version: 2018_10_12_212507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destination_exps", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "exp_attribute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destination_geos", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "geo_attribute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destination_langs", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "lang_attribute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destination_users", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "dest_name"
    t.string "region"
    t.string "country"
    t.string "img_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nearest_city_weather"
    t.string "description"
  end

  create_table "exp_attributes", force: :cascade do |t|
    t.string "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geo_attributes", force: :cascade do |t|
    t.string "geography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lang_attributes", force: :cascade do |t|
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
