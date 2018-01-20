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

ActiveRecord::Schema.define(version: 20180120113220) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "url"
    t.string "tel"
    t.string "fax"
    t.string "email"
    t.string "zip_code"
    t.integer "countly_id"
    t.integer "state_id"
    t.integer "city_id"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.integer "status_id", limit: 1, null: false
    t.datetime "date_time", null: false
    t.integer "stay_time", limit: 3, null: false
    t.integer "shop_id", null: false
    t.integer "persons", limit: 3, null: false
    t.integer "children", limit: 3, null: false
    t.integer "inflow_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id", "date_time"], name: "index_reservations_on_shop_id_and_date_time"
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.integer "company_id", null: false
    t.integer "genre_id", null: false
    t.integer "section_id", null: false
    t.string "url"
    t.string "tel"
    t.string "fax"
    t.string "email"
    t.string "zip_code"
    t.integer "countly_id"
    t.integer "state_id"
    t.integer "city_id"
    t.string "address"
    t.integer "sort_no", default: 1
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "closed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.string "shop_id"
    t.integer "type", limit: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
