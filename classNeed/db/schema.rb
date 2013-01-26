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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130124101446) do

  create_table "campaigns", :force => true do |t|
    t.string   "title"
    t.string   "string"
    t.string   "sms_body"
    t.string   "email_body"
    t.string   "fax_body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "class_needs", :force => true do |t|
    t.integer  "message_template_id"
    t.string   "contacts_url"
    t.string   "status",              :default => "pending"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "title"
    t.string   "string"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "string"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "needs", :force => true do |t|
    t.integer  "campaign_id"
    t.string   "contacts_url"
    t.string   "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "sms_body",   :limit => 160
    t.text     "email_body"
    t.text     "fax_body"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_Name", :limit => 25
    t.string   "last_Name",  :limit => 50
    t.string   "email",      :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
