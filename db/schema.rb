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

ActiveRecord::Schema.define(version: 2022_03_12_130111) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_chapter_answers", force: :cascade do |t|
    t.text "answer"
    t.integer "post_chapter_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_chapter_contents", force: :cascade do |t|
    t.text "content"
    t.integer "post_chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_chapter_images", force: :cascade do |t|
    t.binary "image"
    t.integer "post_chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_chapter_questions", force: :cascade do |t|
    t.text "question"
    t.integer "question_type"
    t.integer "post_chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_chapters", force: :cascade do |t|
    t.text "subtitle"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "title"
    t.text "detail"
    t.integer "sub_category_id"
    t.integer "user_id"
    t.datetime "release"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
  end

end
