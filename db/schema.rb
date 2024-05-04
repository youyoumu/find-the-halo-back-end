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

ActiveRecord::Schema[7.1].define(version: 2024_05_04_150038) do
  create_table "game_hit_boxes", force: :cascade do |t|
    t.integer "game_id"
    t.integer "hit_box_id"
    t.boolean "cleared"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hit_boxes", force: :cascade do |t|
    t.integer "image_id"
    t.float "x_start"
    t.float "x_end"
    t.float "y_start"
    t.float "y_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.string "player_name"
    t.string "how_long_to_beat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
