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

ActiveRecord::Schema.define(version: 20170927162149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "run_details", force: :cascade do |t|
    t.text "test_id"
    t.text "file_path"
    t.text "description"
    t.text "status"
    t.float "run_time"
    t.text "exception"
    t.bigint "run_summary_id"
    t.integer "attempt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["run_summary_id"], name: "index_run_details_on_run_summary_id"
  end

  create_table "run_summaries", force: :cascade do |t|
    t.text "application"
    t.text "environment"
    t.float "duration"
    t.integer "example_count"
    t.integer "failure_count"
    t.boolean "is_full_run"
    t.bigint "parent_run_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
