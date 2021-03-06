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

ActiveRecord::Schema.define(version: 20150204023505) do

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs", force: true do |t|
    t.string   "subject"
    t.text     "description"
    t.boolean  "enabled"
    t.string   "cover"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.integer  "order_id"
  end

  create_table "chapters", force: true do |t|
    t.string   "subject"
    t.text     "description"
    t.integer  "order_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "courses", force: true do |t|
    t.string   "subject"
    t.text     "description"
    t.string   "cover"
    t.text     "reference"
    t.text     "trouble"
    t.integer  "catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.boolean  "enabled"
    t.string   "pdf"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.boolean  "vip_allowed"
    t.string   "flag"
    t.string   "flag_color"
  end

  create_table "histories", force: true do |t|
    t.integer  "period_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "like_likes", force: true do |t|
    t.string   "liker_type",    null: false
    t.integer  "liker_id",      null: false
    t.string   "likeable_type", null: false
    t.integer  "likeable_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "like_likes", ["liker_type", "liker_id", "likeable_type", "likeable_id"], name: "unique_like_likes", unique: true, using: :btree

  create_table "members", force: true do |t|
    t.string   "username",                                 null: false
    t.string   "username_canonical",                       null: false
    t.string   "email",                                    null: false
    t.string   "email_canonical",                          null: false
    t.boolean  "enabled",                                  null: false
    t.string   "salt",                                     null: false
    t.string   "password",                                 null: false
    t.datetime "last_login"
    t.boolean  "locked",                                   null: false
    t.boolean  "expired",                                  null: false
    t.datetime "expires_at"
    t.string   "confirmation_token"
    t.datetime "password_requested_at"
    t.text     "roles",                 limit: 2147483647, null: false
    t.boolean  "credentials_expired",                      null: false
    t.datetime "credentials_expire_at"
    t.string   "name"
    t.string   "job"
    t.string   "company"
    t.integer  "phone",                 limit: 8
    t.string   "vocation"
  end

  add_index "members", ["email_canonical"], name: "UNIQ_2DA17977A0D96FBF", unique: true, using: :btree
  add_index "members", ["username_canonical"], name: "UNIQ_2DA1797792FC23A8", unique: true, using: :btree

  create_table "modes", force: true do |t|
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsfeeds", force: true do |t|
    t.string   "subject"
    t.text     "content"
    t.boolean  "enabled"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "active"
  end

  create_table "periods", force: true do |t|
    t.string   "subject"
    t.text     "content"
    t.string   "cover"
    t.text     "reference"
    t.text     "quiz"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "medium"
    t.string   "pdf"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.integer  "order_id"
  end

  create_table "subscribers", force: true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "job"
    t.string   "company"
    t.string   "phone"
    t.integer  "age"
    t.string   "avatar"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_salt"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vips", force: true do |t|
    t.integer  "user_id"
    t.date     "expired_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wishlists", force: true do |t|
    t.string   "name"
    t.string   "job"
    t.string   "company"
    t.string   "phone"
    t.string   "email"
    t.string   "get_from"
    t.text     "message"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
