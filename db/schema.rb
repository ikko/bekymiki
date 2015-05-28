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

ActiveRecord::Schema.define(version: 20150528085238) do

  create_table "educations", force: true do |t|
    t.string   "organization"
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_hu"
    t.string   "title_en"
  end

  create_table "job_skills", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_id"
    t.integer  "skill_id"
  end

  add_index "job_skills", ["job_id"], name: "index_job_skills_on_job_id"
  add_index "job_skills", ["skill_id"], name: "index_job_skills_on_skill_id"

  create_table "job_tools", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_id"
    t.integer  "tool_id"
  end

  add_index "job_tools", ["job_id"], name: "index_job_tools_on_job_id"
  add_index "job_tools", ["tool_id"], name: "index_job_tools_on_tool_id"

  create_table "jobs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company"
    t.integer  "position"
    t.date     "date_from"
    t.date     "date_to"
    t.text     "description_hu"
    t.string   "role_hu"
    t.string   "company_url"
    t.string   "role_en"
    t.text     "description_en"
  end

  create_table "languages", force: true do |t|
    t.string   "name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_hu"
    t.string   "uni"
  end

  create_table "personals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "favicon"
    t.integer  "position"
  end

  create_table "project_skills", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.integer  "skill_id"
  end

  add_index "project_skills", ["project_id"], name: "index_project_skills_on_project_id"
  add_index "project_skills", ["skill_id"], name: "index_project_skills_on_skill_id"

  create_table "project_tools", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.integer  "tool_id"
  end

  add_index "project_tools", ["project_id"], name: "index_project_tools_on_project_id"
  add_index "project_tools", ["tool_id"], name: "index_project_tools_on_tool_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "screenshot"
    t.text     "description_hu"
    t.integer  "position"
  end

  create_table "skills", force: true do |t|
    t.string   "name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description_en"
    t.string   "name_hu"
    t.text     "description_hu"
    t.integer  "position"
  end

  create_table "tools", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.integer  "position"
  end

  create_table "users", force: true do |t|
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                default: "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], name: "index_users_on_state"

end
