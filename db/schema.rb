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

ActiveRecord::Schema.define(version: 20161015000021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "company_attachment_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "company_id"
    t.integer  "attachment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["attachment_id"], name: "index_company_attachment_relations_on_attachment_id", using: :btree
    t.index ["company_id"], name: "index_company_attachment_relations_on_company_id", using: :btree
  end

  create_table "company_event_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "company_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_event_relations_on_company_id", using: :btree
    t.index ["event_id"], name: "index_company_event_relations_on_event_id", using: :btree
  end

  create_table "company_person_relations", force: :cascade do |t|
    t.string   "start_date"
    t.string   "end_date"
    t.string   "job_function"
    t.string   "active"
    t.integer  "company_id"
    t.integer  "person_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["company_id"], name: "index_company_person_relations_on_company_id", using: :btree
    t.index ["person_id"], name: "index_company_person_relations_on_person_id", using: :btree
  end

  create_table "company_place_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "company_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_place_relations_on_company_id", using: :btree
    t.index ["place_id"], name: "index_company_place_relations_on_place_id", using: :btree
  end

  create_table "company_thing_relations", force: :cascade do |t|
    t.string   "acquired_date"
    t.string   "disposed_date"
    t.string   "active"
    t.integer  "company_id"
    t.integer  "thing_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["company_id"], name: "index_company_thing_relations_on_company_id", using: :btree
    t.index ["thing_id"], name: "index_company_thing_relations_on_thing_id", using: :btree
  end

  create_table "event_attachment_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "event_id"
    t.integer  "attachment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["attachment_id"], name: "index_event_attachment_relations_on_attachment_id", using: :btree
    t.index ["event_id"], name: "index_event_attachment_relations_on_event_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "person_attachment_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "person_id"
    t.integer  "attachment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["attachment_id"], name: "index_person_attachment_relations_on_attachment_id", using: :btree
    t.index ["person_id"], name: "index_person_attachment_relations_on_person_id", using: :btree
  end

  create_table "person_event_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_person_event_relations_on_event_id", using: :btree
    t.index ["person_id"], name: "index_person_event_relations_on_person_id", using: :btree
  end

  create_table "person_place_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "person_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_place_relations_on_person_id", using: :btree
    t.index ["place_id"], name: "index_person_place_relations_on_place_id", using: :btree
  end

  create_table "person_thing_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "person_id"
    t.integer  "thing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_thing_relations_on_person_id", using: :btree
    t.index ["thing_id"], name: "index_person_thing_relations_on_thing_id", using: :btree
  end

  create_table "place_attachment_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "place_id"
    t.integer  "attachment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["attachment_id"], name: "index_place_attachment_relations_on_attachment_id", using: :btree
    t.index ["place_id"], name: "index_place_attachment_relations_on_place_id", using: :btree
  end

  create_table "place_event_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "place_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_place_event_relations_on_event_id", using: :btree
    t.index ["place_id"], name: "index_place_event_relations_on_place_id", using: :btree
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.string   "lattitude"
    t.string   "longitude"
    t.string   "altitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "thing_attachment_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "thing_id"
    t.integer  "attachment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["attachment_id"], name: "index_thing_attachment_relations_on_attachment_id", using: :btree
    t.index ["thing_id"], name: "index_thing_attachment_relations_on_thing_id", using: :btree
  end

  create_table "thing_event_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "thing_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_thing_event_relations_on_event_id", using: :btree
    t.index ["thing_id"], name: "index_thing_event_relations_on_thing_id", using: :btree
  end

  create_table "thing_place_relations", force: :cascade do |t|
    t.string   "active"
    t.integer  "thing_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_thing_place_relations_on_place_id", using: :btree
    t.index ["thing_id"], name: "index_thing_place_relations_on_thing_id", using: :btree
  end

  create_table "things", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "company_attachment_relations", "attachments"
  add_foreign_key "company_attachment_relations", "companies"
  add_foreign_key "company_event_relations", "companies"
  add_foreign_key "company_event_relations", "events"
  add_foreign_key "company_person_relations", "companies"
  add_foreign_key "company_person_relations", "people"
  add_foreign_key "company_place_relations", "companies"
  add_foreign_key "company_place_relations", "places"
  add_foreign_key "company_thing_relations", "companies"
  add_foreign_key "company_thing_relations", "things"
  add_foreign_key "event_attachment_relations", "attachments"
  add_foreign_key "event_attachment_relations", "events"
  add_foreign_key "person_attachment_relations", "attachments"
  add_foreign_key "person_attachment_relations", "people"
  add_foreign_key "person_event_relations", "events"
  add_foreign_key "person_event_relations", "people"
  add_foreign_key "person_place_relations", "people"
  add_foreign_key "person_place_relations", "places"
  add_foreign_key "person_thing_relations", "people"
  add_foreign_key "person_thing_relations", "things"
  add_foreign_key "place_attachment_relations", "attachments"
  add_foreign_key "place_attachment_relations", "places"
  add_foreign_key "place_event_relations", "events"
  add_foreign_key "place_event_relations", "places"
  add_foreign_key "thing_attachment_relations", "attachments"
  add_foreign_key "thing_attachment_relations", "things"
  add_foreign_key "thing_event_relations", "events"
  add_foreign_key "thing_event_relations", "things"
  add_foreign_key "thing_place_relations", "places"
  add_foreign_key "thing_place_relations", "things"
end
