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

ActiveRecord::Schema[7.0].define(version: 2023_04_17_152009) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "edges", force: :cascade do |t|
    t.bigint "first_node_id"
    t.bigint "second_node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_node_id"], name: "index_edges_on_first_node_id"
    t.index ["second_node_id"], name: "index_edges_on_second_node_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.string "label"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
