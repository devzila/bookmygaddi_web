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

ActiveRecord::Schema.define(version: 2021_11_21_144936) do

  create_table "admins", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "content_relationships", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "content_id"
    t.bigint "related_content_id"
    t.index ["content_id", "related_content_id"], name: "index_content_relationships_on_content_id_and_related_content_id", unique: true
    t.index ["content_id"], name: "index_content_relationships_on_content_id"
    t.index ["related_content_id"], name: "index_content_relationships_on_related_content_id"
  end

  create_table "contents", charset: "utf8mb4", force: :cascade do |t|
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
    t.text "custom_meta_tag"
    t.text "meta_tag_description"
    t.index ["parent_id", "active"], name: "index_contents_on_parent_id_and_active"
    t.index ["parent_id"], name: "index_contents_on_parent_id"
    t.index ["slug"], name: "index_contents_on_slug", unique: true
  end

  create_table "forms", charset: "utf8mb4", force: :cascade do |t|
    t.string "slug"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leads", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "source"
    t.string "phone_number"
    t.json "form_data"
    t.string "ip"
    t.string "device"
    t.string "article"
    t.string "form_name"
    t.text "comments"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status"], name: "index_leads_on_status"
  end

  create_table "taggings", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "name", collation: "utf8_bin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  add_foreign_key "content_relationships", "contents"
  add_foreign_key "taggings", "tags"
end
