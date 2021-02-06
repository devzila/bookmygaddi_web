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

ActiveRecord::Schema.define(version: 2021_02_06_074354) do

  create_table "contents", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "parent_id"
    t.string "title", null: false
    t.string "slug", null: false
    t.text "excerpt"
    t.text "content"
    t.integer "ui_type"
    t.integer "hover_button_type"
    t.string "thumbmedia_url"
    t.integer "status"
    t.integer "comment_count", default: 0
    t.integer "like_count", default: 0
    t.integer "view_priority", default: 0
    t.date "valid_till"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id", "status"], name: "index_contents_on_parent_id_and_status"
    t.index ["parent_id"], name: "index_contents_on_parent_id"
    t.index ["slug"], name: "index_contents_on_slug", unique: true
    t.index ["status"], name: "index_contents_on_status"
  end

end
