ActiveRecord::Schema.define(version: 2022_07_28_054742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "social"
    t.text "work"
    t.text "bio"
    t.integer "gig_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_gigs", id: false, force: :cascade do |t|
    t.integer "artist_id"
    t.integer "gig_id"
  end

  create_table "gigs", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "genre"
    t.text "rating"
    t.text "location"
    t.integer "user_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "eventdate"
    t.text "tickets_link"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "website"
    t.text "fb_link"
    t.text "ig_link"
    t.text "other_link"
    t.text "image"
    t.text "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
