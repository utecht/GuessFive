# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_26_235259) do
  create_table "game_players", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "player_id", null: false
    t.integer "thing_id", null: false
    t.string "color"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_players_on_game_id"
    t.index ["player_id"], name: "index_game_players_on_player_id"
    t.index ["thing_id"], name: "index_game_players_on_thing_id"
  end

  create_table "game_things", force: :cascade do |t|
    t.integer "thing_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_things_on_game_id"
    t.index ["thing_id"], name: "index_game_things_on_thing_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thing_tags", force: :cascade do |t|
    t.integer "thing_id", null: false
    t.integer "tag_id", null: false
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_thing_tags_on_tag_id"
    t.index ["thing_id"], name: "index_thing_tags_on_thing_id"
  end

  create_table "things", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "game_players", "games"
  add_foreign_key "game_players", "players"
  add_foreign_key "game_players", "things"
  add_foreign_key "game_things", "games"
  add_foreign_key "game_things", "things"
  add_foreign_key "thing_tags", "tags"
  add_foreign_key "thing_tags", "things"
end
