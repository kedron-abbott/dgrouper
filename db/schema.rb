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

ActiveRecord::Schema.define(version: 2019_09_01_191222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "school", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "connections", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "dgroup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dgroup_id"], name: "index_connections_on_dgroup_id"
    t.index ["user_id"], name: "index_connections_on_user_id"
  end

  create_table "dgroups", force: :cascade do |t|
    t.time "time", null: false
    t.integer "day", null: false
    t.bigint "chapter_id", null: false
    t.integer "location", null: false
    t.integer "gender", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chapter_id"], name: "index_dgroups_on_chapter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.integer "gender", null: false
    t.integer "status", default: 0
    t.bigint "chapter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "type", default: 0
    t.index ["chapter_id"], name: "index_users_on_chapter_id"
  end

  add_foreign_key "connections", "dgroups"
  add_foreign_key "connections", "users"
  add_foreign_key "dgroups", "chapters"
  add_foreign_key "users", "chapters"
end
