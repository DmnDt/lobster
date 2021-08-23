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

ActiveRecord::Schema.define(version: 2021_08_23_143424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investees", force: :cascade do |t|
    t.string "SIRET"
    t.string "company_name"
    t.string "NAF"
    t.string "address"
    t.string "activity"
    t.string "president"
    t.string "managing_director"
    t.integer "shares"
    t.text "table_cap"
    t.integer "turnover_n_2"
    t.integer "turnover_n_1"
    t.integer "turnover_n"
    t.integer "growth_n_2_n_1"
    t.string "growth_n_1_n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "valuation"
    t.integer "conversion_rate"
    t.integer "coupon"
    t.date "conversion_date"
    t.integer "status"
    t.integer "total_amount"
    t.string "financing_thesis"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
