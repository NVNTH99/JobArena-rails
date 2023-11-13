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

ActiveRecord::Schema[7.1].define(version: 2023_11_12_211458) do
  create_table "applications", force: :cascade do |t|
    t.integer "App_id"
    t.integer "cand_id"
    t.integer "job_id"
    t.string "status", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["App_id"], name: "index_applications_on_App_id", unique: true
  end

  create_table "candidate_details", force: :cascade do |t|
    t.integer "cand_id"
    t.binary "prof_pic"
    t.string "First_name", limit: 30
    t.string "Last_name", limit: 30
    t.string "Gender", limit: 20
    t.string "Disability", limit: 30
    t.date "Date_of_Birth"
    t.string "Linkedin", limit: 255
    t.string "Phone", limit: 20
    t.text "Languages"
    t.text "Address"
    t.string "Nationality", limit: 50
    t.binary "Resume"
    t.text "Skills"
    t.text "preference_category"
    t.string "email", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cand_id"], name: "index_candidate_details_on_cand_id", unique: true
  end

  create_table "interviews", force: :cascade do |t|
    t.integer "App_id"
    t.datetime "DATE_TIME", precision: nil
    t.string "link", limit: 100
    t.string "venue", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "job_id"
    t.string "Title", limit: 30
    t.text "Description"
    t.text "Responsibility"
    t.text "Requirements"
    t.datetime "Deadline", precision: nil
    t.string "Location", limit: 50
    t.integer "salary"
    t.integer "work_days"
    t.string "work_hours", limit: 15
    t.string "job_type", limit: 15
    t.text "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_jobs_on_job_id", unique: true
  end

  add_foreign_key "applications", "candidate_details", column: "cand_id", primary_key: "cand_id"
  add_foreign_key "applications", "jobs", primary_key: "job_id"
  add_foreign_key "interviews", "applications", column: "App_id", primary_key: "App_id"
end
