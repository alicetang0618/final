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

ActiveRecord::Schema.define(version: 20160530020857) do

  create_table "comments", force: :cascade do |t|
    t.integer "rating"
    t.text    "comment"
    t.integer "post_id"
    t.integer "user_id"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "datasets", force: :cascade do |t|
    t.text "database"
    t.text "table"
    t.text "url"
  end

  create_table "posts", force: :cascade do |t|
    t.text    "title"
    t.text    "image_url"
    t.text    "content"
    t.integer "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "sources", force: :cascade do |t|
    t.integer "post_id"
    t.integer "dataset_id"
  end

  add_index "sources", ["dataset_id"], name: "index_sources_on_dataset_id"
  add_index "sources", ["post_id"], name: "index_sources_on_post_id"

  create_table "subscriptions", force: :cascade do |t|
    t.integer "publisher_id"
    t.integer "subscriber_id"
  end

  add_index "subscriptions", ["publisher_id"], name: "index_subscriptions_on_publisher_id"
  add_index "subscriptions", ["subscriber_id"], name: "index_subscriptions_on_subscriber_id"

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "description"
    t.text     "password_digest"
    t.boolean  "admin",           default: false
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

end
