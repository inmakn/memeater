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

ActiveRecord::Schema.define(version: 20140806162201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "hp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spritesheet_file_name"
    t.string   "spritesheet_content_type"
    t.integer  "spritesheet_file_size"
    t.datetime "spritesheet_updated_at"
  end

  create_table "environments", force: true do |t|
    t.string   "name"
    t.string   "top_layer"
    t.string   "mid_layer"
    t.string   "bottom_layer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "top_layer_file_name"
    t.string   "top_layer_content_type"
    t.integer  "top_layer_file_size"
    t.datetime "top_layer_updated_at"
    t.string   "middle_layer_file_name"
    t.string   "middle_layer_content_type"
    t.integer  "middle_layer_file_size"
    t.datetime "middle_layer_updated_at"
    t.string   "bottom_layer_file_name"
    t.string   "bottom_layer_content_type"
    t.integer  "bottom_layer_file_size"
    t.datetime "bottom_layer_updated_at"
  end

  create_table "games", force: true do |t|
    t.integer "score"
    t.integer "user_id"
    t.integer "character_id"
    t.integer "environment_id"
    t.integer "level"
  end

  create_table "games_memes", id: false, force: true do |t|
    t.integer "meme_id", null: false
    t.integer "game_id", null: false
  end

  create_table "memes", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "link_url"
    t.integer  "speed"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spritesheet_file_name"
    t.string   "spritesheet_content_type"
    t.integer  "spritesheet_file_size"
    t.datetime "spritesheet_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "high_score"
    t.integer  "num_games_played"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
