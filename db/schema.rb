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

ActiveRecord::Schema[7.0].define(version: 2022_10_17_232839) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade"], name: "index_courses_on_grade", unique: true
  end

  create_table "loans", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "machine_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_loans_on_machine_id"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string "serial"
    t.string "brand"
    t.string "model"
    t.string "kind_machine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["serial"], name: "index_machines_on_serial", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "rut"
    t.string "name"
    t.string "last_name"
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_users_on_course_id"
    t.index ["rut"], name: "index_users_on_rut", unique: true
  end

  add_foreign_key "loans", "machines"
  add_foreign_key "loans", "users"
  add_foreign_key "users", "courses"
end
