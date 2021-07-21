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

ActiveRecord::Schema.define(version: 2021_07_21_094908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "balconies", force: :cascade do |t|
    t.string "title"
    t.string "luminosity"
    t.string "city"
    t.string "size"
    t.string "rain_exposed"
    t.integer "number_of_plants_desired"
    t.string "water_need"
    t.string "categories", default: [], array: true
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_balconies_on_user_id"
  end

  create_table "balcony_plants", force: :cascade do |t|
    t.boolean "planted", default: false
    t.bigint "plant_id", null: false
    t.bigint "balcony_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["balcony_id"], name: "index_balcony_plants_on_balcony_id"
    t.index ["plant_id"], name: "index_balcony_plants_on_plant_id"
  end

  create_table "combative_plants", force: :cascade do |t|
    t.bigint "plant1_id", null: false
    t.bigint "plant2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant1_id"], name: "index_combative_plants_on_plant1_id"
    t.index ["plant2_id"], name: "index_combative_plants_on_plant2_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.string "luminosity"
    t.string "water_need"
    t.integer "water_frequency_in_days"
    t.string "plantation_months", default: [], array: true
    t.string "harvest_months", default: [], array: true
    t.integer "min_temp"
    t.integer "max_temp"
    t.integer "spacing_in_cm"
    t.text "disease"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.boolean "completed", default: false
    t.string "category"
    t.text "message"
    t.string "title"
    t.date "due_date"
    t.bigint "balcony_plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["balcony_plant_id"], name: "index_tasks_on_balcony_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "balconies", "users"
  add_foreign_key "balcony_plants", "balconies"
  add_foreign_key "balcony_plants", "plants"
  add_foreign_key "combative_plants", "plants", column: "plant1_id"
  add_foreign_key "combative_plants", "plants", column: "plant2_id"
  add_foreign_key "tasks", "balcony_plants"
end
