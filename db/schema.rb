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

ActiveRecord::Schema.define(version: 20160114232223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "repos", force: :cascade do |t|
    t.integer  "githubId"
    t.integer  "stars"
    t.integer  "forks"
    t.string   "summary"
    t.string   "title"
    t.string   "url"
    t.integer  "issues"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repos_users", id: false, force: :cascade do |t|
    t.integer "user_id",                 null: false
    t.integer "repo_id",                 null: false
    t.boolean "like",    default: false
    t.boolean "display", default: true
    t.boolean "fork",    default: false
    t.boolean "star",    default: false
  end

  add_index "repos_users", ["repo_id"], name: "index_repos_users_on_repo_id", using: :btree
  add_index "repos_users", ["user_id"], name: "index_repos_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "photoUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
