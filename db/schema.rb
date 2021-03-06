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

ActiveRecord::Schema.define(version: 20170326190045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitors", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "competitor_id"
    t.integer  "friend_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "competitor_id"
    t.integer  "challenger_id"
    t.integer  "game_id"
    t.integer  "wager_id"
    t.integer  "round_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "competitor_score"
    t.integer  "challenger_score"
  end

  create_table "images", force: :cascade do |t|
    t.string   "photo"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "competitor_id"
    t.integer  "chatroom_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "competitor_id"
    t.string   "image"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "orientation"
    t.string   "bio"
    t.string   "preferred_opponent"
    t.string   "preferred_age_range"
    t.string   "distance_limits"
    t.string   "default_games"
    t.integer  "rating"
    t.integer  "stats"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "competitor_id"
  end

  create_table "trivia_answers", force: :cascade do |t|
    t.string   "answer"
    t.boolean  "correct"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "trivia_question_id"
  end

  create_table "trivia_questions", force: :cascade do |t|
    t.string   "question"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

  create_table "wagers", force: :cascade do |t|
    t.string   "bet"
    t.boolean  "fulfilled"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
