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

ActiveRecord::Schema.define(version: 20160321152324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "description"
    t.integer  "map_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "border_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.boolean  "is_directional"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "environment_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "environment_type_id"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.datetime "next_tick"
    t.integer  "map_id"
    t.integer  "current_turn_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "rows"
    t.integer  "cols"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_states", force: :cascade do |t|
    t.string   "name"
    t.integer  "position_id"
    t.integer  "turn_id"
    t.integer  "score"
    t.integer  "trade_value"
    t.integer  "money_income"
    t.integer  "materials_income"
    t.integer  "research_income"
    t.integer  "saved_money"
    t.integer  "saved_materials"
    t.integer  "saved_research"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "color"
    t.integer  "first_turn"
    t.integer  "last_turn"
    t.boolean  "is_secret"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "row"
    t.integer  "col"
    t.integer  "environment_id"
    t.integer  "position_state_id"
    t.integer  "map_id"
    t.integer  "money"
    t.integer  "materials"
    t.integer  "research"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "is_secret"
  end

  create_table "regions_borders", force: :cascade do |t|
    t.string   "name"
    t.integer  "source_id"
    t.integer  "sink_id"
    t.integer  "border_type_id"
    t.boolean  "is_secret"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer  "number"
    t.text     "introduction"
    t.text     "results"
    t.integer  "game_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
