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

ActiveRecord::Schema.define(version: 20161206131607) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "answer_1"
    t.string   "answer_2"
    t.string   "answer_3"
    t.integer  "specialist_id"
    t.string   "answer_specialist"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "news_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "news_title"
    t.string   "news_author"
    t.string   "news_content"
    t.string   "news_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "news_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "news_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_content"
    t.integer  "news_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "specialists", force: :cascade do |t|
    t.string   "specialist_name"
    t.string   "specialist_profession"
    t.string   "specialist_bio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
