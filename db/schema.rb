# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_13_222946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name", null: false
    t.integer "house_id"
    t.index ["name"], name: "index_dogs_on_name", unique: true
  end

  create_table "houses", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string "name", null: false
    t.integer "dog_id", null: false
    t.string "color", null: false
  end

end
