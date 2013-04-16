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

ActiveRecord::Schema.define(version: 20130301015400) do

  create_table "clients", force: true do |t|
    t.string   "name",                           null: false
    t.string   "description"
    t.integer  "queue_group_id"
    t.boolean  "archived",       default: false, null: false
    t.string   "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["queue_group_id"], name: "index_clients_on_queue_group_id"

  create_table "events", force: true do |t|
    t.string   "name",                            null: false
    t.text     "description"
    t.integer  "assignee_id"
    t.string   "assignee_type"
    t.integer  "activity_id"
    t.integer  "event_class_id"
    t.integer  "system_id"
    t.integer  "updated_by_id"
    t.integer  "created_by_id"
    t.string   "status",          default: "NEW", null: false
    t.integer  "priority",        default: 3,     null: false
    t.datetime "target_datetime"
    t.integer  "effort",          default: 0
    t.string   "event_id"
    t.integer  "queue_group_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["activity_id"], name: "index_events_on_activity_id"
  add_index "events", ["assignee_id", "assignee_type"], name: "index_events_on_assignee_id_and_assignee_type"
  add_index "events", ["event_class_id"], name: "index_events_on_event_class_id"
  add_index "events", ["system_id"], name: "index_events_on_system_id"

  create_table "queue_groups", force: true do |t|
    t.string   "name",                            null: false
    t.string   "description"
    t.integer  "service_line_id"
    t.boolean  "archived",        default: false, null: false
    t.string   "queue_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "queue_groups", ["service_line_id"], name: "index_queue_groups_on_service_line_id"

  create_table "systems", force: true do |t|
    t.string   "name",                        null: false
    t.string   "description"
    t.integer  "client_id"
    t.boolean  "archived",    default: false, null: false
    t.string   "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "systems", ["client_id"], name: "index_systems_on_client_id"

end
