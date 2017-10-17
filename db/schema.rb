# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20171017100103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type", using: :btree

  create_table "cms_homepages", force: :cascade do |t|
    t.string   "header_title_1"
    t.string   "header_caption_1"
    t.string   "header_title_2"
    t.string   "header_caption_2"
    t.string   "header_title_3"
    t.string   "header_caption_3"
    t.string   "header_title_4"
    t.string   "header_caption_4"
    t.text     "main_description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "header_image_1_file_name"
    t.string   "header_image_1_content_type"
    t.integer  "header_image_1_file_size"
    t.datetime "header_image_1_updated_at"
    t.string   "header_image_2_file_name"
    t.string   "header_image_2_content_type"
    t.integer  "header_image_2_file_size"
    t.datetime "header_image_2_updated_at"
    t.string   "header_image_3_file_name"
    t.string   "header_image_3_content_type"
    t.integer  "header_image_3_file_size"
    t.datetime "header_image_3_updated_at"
    t.string   "header_image_4_file_name"
    t.string   "header_image_4_content_type"
    t.integer  "header_image_4_file_size"
    t.datetime "header_image_4_updated_at"
    t.string   "header_image_5_file_name"
    t.string   "header_image_5_content_type"
    t.integer  "header_image_5_file_size"
    t.datetime "header_image_5_updated_at"
    t.string   "header_title_5"
    t.string   "header_caption_5"
  end

  create_table "cms_pages", force: :cascade do |t|
    t.text     "text_1"
    t.text     "text_2"
    t.text     "text_3"
    t.string   "header_image_file_name"
    t.string   "header_image_content_type"
    t.integer  "header_image_file_size"
    t.datetime "header_image_updated_at"
    t.string   "image_1_file_name"
    t.string   "image_1_content_type"
    t.integer  "image_1_file_size"
    t.datetime "image_1_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title"
    t.string   "slug"
  end

  add_index "cms_pages", ["slug"], name: "index_cms_pages_on_slug", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
