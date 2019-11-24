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

ActiveRecord::Schema.define(version: 2019_11_24_041455) do

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rating"
    t.string "comments"
    t.datetime "date_completed"
    t.integer "learner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.datetime "date"
    t.string "url"
    t.datetime "timestamps"
    t.text "language"
    t.index ["learner_id"], name: "index_courses_on_learner_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "language"
    t.integer "learner_id"
    t.string "title"
    t.datetime "date"
    t.string "category"
  end

  create_table "learners", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "github"
    t.string "twitter"
    t.string "linkedin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "created_courses"
    t.string "title"
    t.string "category"
    t.string "description"
    t.string "url"
    t.string "language"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "title"
    t.boolean "completed"
    t.string "comments"
    t.integer "language_id"
    t.integer "course_id", null: false
    t.datetime "date"
    t.string "category"
    t.string "description"
    t.integer "rating"
    t.string "url"
    t.string "language"
    t.index ["course_id"], name: "index_statuses_on_course_id"
    t.index ["language_id"], name: "index_statuses_on_language_id"
  end

  add_foreign_key "courses", "learners"
  add_foreign_key "statuses", "courses"
  add_foreign_key "statuses", "languages"
end
