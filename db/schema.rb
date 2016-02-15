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

ActiveRecord::Schema.define(version: 20160215014950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ips", force: :cascade do |t|
    t.string "address"
  end

  create_table "payload_requests", force: :cascade do |t|
    t.string  "parameters"
    t.string  "requested_at"
    t.string  "responded_in"
    t.string  "referred_by"
    t.string  "request_type"
    t.integer "url_id"
    t.integer "ip_id"
    t.integer "user_agent_id"
    t.integer "resolution_size_id"
    t.integer "event_name_id"
  end

  create_table "resolution_sizes", force: :cascade do |t|
    t.string "resolution_width"
    t.string "resolution_height"
  end

  create_table "urls", force: :cascade do |t|
    t.string "route"
  end

  create_table "user_agents", force: :cascade do |t|
    t.string "os"
    t.string "browser"
  end

end
