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

ActiveRecord::Schema.define(version: 2021_02_25_094759) do

  create_table "articles", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "parent_id"
    t.string "title"
    t.string "slug"
    t.text "excerpt"
    t.text "description"
    t.string "ui_type"
    t.string "hover_button_type"
    t.string "thumbtype"
    t.string "thumbmedia_url"
    t.string "contact"
    t.string "phone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_articles_on_parent_id"
    t.index ["slug"], name: "index_articles_on_slug", unique: true
  end

  create_table "media_tables", charset: "utf8mb4", force: :cascade do |t|
    t.string "media_url"
    t.string "media_type"
    t.integer "sequence"
    t.bigint "article_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_media_tables_on_article_id"
  end

  add_foreign_key "media_tables", "articles"
end
