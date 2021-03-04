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

ActiveRecord::Schema.define(version: 2021_01_11_055155) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone", limit: 15
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "authors_books", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_authors_books_on_author_id"
    t.index ["book_id"], name: "index_authors_books_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "publisher_id", null: false
    t.integer "categary_id", null: false
    t.string "isbn10", limit: 10
    t.string "isbn13", limit: 13
    t.string "language", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categary_id"], name: "index_books_on_categary_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "categaries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_detalis", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "book_id", null: false
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_order_detalis_on_book_id"
    t.index ["order_id"], name: "index_order_detalis_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "address"
    t.string "city", limit: 100
    t.string "state", limit: 50
    t.string "postal_code", limit: 6
    t.string "country", limit: 50
    t.string "phone", limit: 15
    t.decimal "total_price"
    t.string "payment_mode", limit: 20
    t.string "payment_id", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone", limit: 15
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "brith_date"
    t.string "phone", limit: 15
    t.string "gender", limit: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "authors_books", "authors"
  add_foreign_key "authors_books", "books"
  add_foreign_key "books", "categaries"
  add_foreign_key "books", "publishers"
  add_foreign_key "order_detalis", "books"
  add_foreign_key "order_detalis", "orders"
  add_foreign_key "orders", "users"
end
