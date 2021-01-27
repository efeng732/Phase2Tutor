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

ActiveRecord::Schema.define(version: 8) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "time"
    t.integer "tutor_id"
    t.integer "student_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
    t.integer "rating"
    t.integer "tutor_id"
    t.integer "student_id"
  end

  create_table "student_inboxes", force: :cascade do |t|
    t.string "message"
    t.integer "tutor_id"
    t.integer "student_id"
  end

  create_table "student_subjects", force: :cascade do |t|
    t.integer "student_id"
    t.integer "subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.integer "age"
    t.string "password_digest"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject"
  end

  create_table "tutor_subjects", force: :cascade do |t|
    t.integer "tutor_id"
    t.integer "subject_id"
  end

  create_table "tutors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "hourly"
    t.integer "years"
    t.string "img"
    t.string "bio"
    t.string "education"
  end

end
