# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090803123456) do

  create_table "beats", :force => true do |t|
    t.string   "name"
    t.text     "content_text"
    t.integer  "position"
    t.integer  "lesson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "intro_text"
    t.text     "header"
    t.text     "footer"
    t.string   "intro_audio_path"
    t.string   "intro_video_path"
    t.string   "content_video_path"
    t.string   "content_audio_path"
    t.text     "description"
    t.string   "pretty_name"
    t.integer  "not_img_width"
    t.integer  "not_img_height"
    t.string   "not_path"
    t.string   "midi_path"
    t.text     "hints"
    t.string   "pdf_path"
    t.string   "time_sign"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "header"
    t.string   "footer"
    t.text     "content_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "intro_text"
    t.string   "intro_audio_path"
    t.string   "intro_video_path"
    t.string   "content_video_path"
    t.string   "content_audio_path"
    t.text     "description"
    t.string   "pretty_name"
  end

  create_table "lessons", :force => true do |t|
    t.string   "name"
    t.text     "content_text"
    t.string   "header"
    t.string   "footer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "term_id"
    t.text     "intro_text"
    t.string   "intro_audio_path"
    t.string   "intro_video_path"
    t.string   "content_video_path"
    t.string   "content_audio_path"
    t.text     "description"
    t.string   "pretty_name"
    t.integer  "position"
    t.string   "lesson_pdf_One_path"
    t.string   "lesson_pdf_Two_path"
  end

  create_table "terms", :force => true do |t|
    t.string   "name"
    t.string   "header"
    t.string   "footer"
    t.text     "content_text"
    t.integer  "position"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "intro_text"
    t.string   "intro_audio_path"
    t.string   "intro_video_path"
    t.string   "content_video_path"
    t.string   "content_audio_path"
    t.text     "description"
    t.string   "pretty_name"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
