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

ActiveRecord::Schema.define(version: 20150810010922) do

  create_table "flights", force: :cascade do |t|
    t.integer  "adultCount"
    t.integer  "childCount"
    t.integer  "infantInLapCount"
    t.integer  "infantInSeatCount"
    t.integer  "seniorCount"
    t.string   "origin"
    t.string   "destination"
    t.string   "date"
    t.integer  "maxStops"
    t.integer  "maxConnectionDuration"
    t.string   "preferredCabin"
    t.string   "earliestTime"
    t.string   "latestTime"
    t.string   "permittedCarrier"
    t.string   "alliance"
    t.string   "prohibitedCarrier"
    t.string   "maxPrice"
    t.string   "saleCountry"
    t.boolean  "refundable"
    t.integer  "solutions"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
