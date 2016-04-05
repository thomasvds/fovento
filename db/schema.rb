# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160405071205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidacies", force: :cascade do |t|
    t.string   "motivation_for_mission"
    t.string   "motivation_for_skills"
    t.string   "engagement_practicalities"
    t.datetime "consulted_at"
    t.string   "status"
    t.integer  "mission_id"
    t.integer  "volunteer_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "candidacies", ["mission_id"], name: "index_candidacies_on_mission_id", using: :btree
  add_index "candidacies", ["volunteer_id"], name: "index_candidacies_on_volunteer_id", using: :btree

  create_table "missions", force: :cascade do |t|
    t.string   "title"
    t.string   "status"
    t.string   "author"
    t.integer  "nonprofit_profile_id"
    t.datetime "published_at"
    t.datetime "staffed_at"
    t.datetime "started_at"
    t.datetime "closed_at"
    t.string   "skills"
    t.string   "full_title"
    t.text     "picture"
    t.text     "objectives"
    t.text     "outcomes"
    t.string   "suggested_duration"
    t.string   "suggested_start_date"
    t.string   "suggested_end_date"
    t.string   "suggested_format"
    t.string   "impact"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "missions", ["nonprofit_profile_id"], name: "index_missions_on_nonprofit_profile_id", using: :btree

  create_table "nonprofit_profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "sector"
    t.string   "website"
    t.string   "email"
    t.text     "address"
    t.text     "map_frame"
    t.text     "description"
    t.string   "neighbourhood"
    t.string   "phone_number"
    t.string   "logo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "email",                   default: "", null: false
    t.string   "encrypted_password",      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.string   "headline"
    t.string   "linkedin_public_profile"
    t.string   "phone_number"
    t.string   "skills"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "volunteers", ["email"], name: "index_volunteers_on_email", unique: true, using: :btree
  add_index "volunteers", ["reset_password_token"], name: "index_volunteers_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "candidacies", "missions"
  add_foreign_key "candidacies", "volunteers"
  add_foreign_key "missions", "nonprofit_profiles"
end
