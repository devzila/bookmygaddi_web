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

ActiveRecord::Schema.define(version: 2021_04_07_080841) do

  create_table "contents", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "parent_id"
    t.string "title", null: false
    t.string "slug", null: false
    t.text "excerpt"
    t.text "content"
    t.integer "ui_type"
    t.integer "hover_button_type"
    t.string "thumbmedia_url"
    t.integer "comment_count", default: 0
    t.integer "like_count", default: 0
    t.integer "view_priority", default: 0
    t.boolean "menu_visibility", default: false
    t.boolean "active", default: true
    t.date "valid_till"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id", "active"], name: "index_contents_on_parent_id_and_active"
    t.index ["parent_id"], name: "index_contents_on_parent_id"
    t.index ["slug"], name: "index_contents_on_slug", unique: true
  end

  create_table "forms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "slug"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leads", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "source"
    t.string "phone_number"
    t.json "form_data"
    t.string "ip"
    t.string "device"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
