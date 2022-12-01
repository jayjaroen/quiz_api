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

ActiveRecord::Schema[7.0].define(version: 2022_12_01_140853) do
  create_table "quiz_answers", force: :cascade do |t|
    t.text "answer"
    t.boolean "correct"
    t.integer "quiz_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_item_id"], name: "index_quiz_answers_on_quiz_item_id"
  end

  create_table "quiz_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_items", force: :cascade do |t|
    t.text "question"
    t.integer "quiz_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_category_id"], name: "index_quiz_items_on_quiz_category_id"
  end

  add_foreign_key "quiz_answers", "quiz_items"
  add_foreign_key "quiz_items", "quiz_categories"
end
