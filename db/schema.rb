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

ActiveRecord::Schema.define(version: 2021_07_12_032809) do

  create_table "applicants", force: :cascade do |t|
    t.integer "job_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_applicants_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "code"
    t.text "description"
    t.string "industry"
    t.string "function"
    t.string "employment_type"
    t.string "location"
    t.string "department"
    t.integer "experience_from"
    t.integer "experience_upto"
    t.integer "positions"
    t.integer "annual_salary_from"
    t.integer "annual_salary_upto"
    t.string "currency"
    t.boolean "show_salary_details", default: true
    t.boolean "visible", default: true
    t.integer "new_applicants"
    t.integer "active_applicants"
    t.integer "hired_applicants"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.boolean "filling_position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
