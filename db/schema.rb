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

ActiveRecord::Schema.define(version: 2020_07_29_024324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "technologies", force: :cascade do |t|
    t.string "technology"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "technologies_users", id: false, force: :cascade do |t|
    t.bigint "technology_id"
    t.bigint "user_id"
    t.index ["technology_id"], name: "index_technologies_users_on_technology_id"
    t.index ["user_id"], name: "index_technologies_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_mentor", default: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_hash"
    t.string "password_salt"
    t.string "phone"
    t.boolean "is_admin", default: true
    t.string "city"
    t.string "state"
    t.string "description"
  end

end
