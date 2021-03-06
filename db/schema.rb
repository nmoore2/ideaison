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

ActiveRecord::Schema.define(version: 2018_12_13_211319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "message"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "portfolio_id"
    t.text "caption"
    t.integer "placement"
    t.string "image_type"
    t.string "video_url"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_1"
    t.string "image_2"
    t.string "image_3"
    t.string "image_4"
    t.string "image_5"
    t.string "video_url"
    t.string "thumbnail"
    t.integer "placement"
    t.bigint "service_id"
    t.text "people"
    t.text "ideas"
    t.text "proud_of"
    t.text "cherry_on_top"
    t.boolean "private"
    t.integer "service_id_2"
    t.index ["service_id"], name: "index_portfolios_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.text "subtitle"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "placement"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.text "what_you_do"
    t.text "what_musical_artist"
    t.text "best_concert"
    t.text "coolest_experience"
    t.text "consume_cannabis"
    t.text "which_instrument"
    t.text "beauty_product"
    t.text "unique_place"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "placement"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "quote"
    t.string "author"
    t.integer "placement"
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
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "portfolios", "services"
end
