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

ActiveRecord::Schema.define(version: 20161007161900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "publication"
    t.date     "date"
    t.string   "link"
    t.text     "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "sub_title"
    t.string   "full_title"
    t.integer  "year"
    t.string   "contributors"
    t.string   "publisher"
    t.string   "pages"
    t.integer  "height"
    t.integer  "width"
    t.string   "language"
    t.text     "description"
    t.string   "amazon_link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "photo_link"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_id",                      null: false
    t.string   "data_filename",                null: false
    t.integer  "data_size"
    t.string   "data_content_type"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "essays", force: :cascade do |t|
    t.string   "title"
    t.string   "publication"
    t.integer  "year"
    t.string   "publisher"
    t.string   "book_author"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "link"
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "title"
    t.string   "institution"
    t.date     "date"
    t.string   "link"
    t.text     "description"
    t.integer  "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.string   "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.date     "date"
    t.string   "author"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "content"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
