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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110402141646) do

  create_table "kinkynights", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notices", :force => true do |t|
    t.string "caption", :null => false
    t.string "text",    :null => false
  end

  create_table "quotes", :force => true do |t|
<<<<<<< HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
=======
    t.string "user_alias", :limit => 35, :null => false
    t.text   "text",                     :null => false
>>>>>>> 02e467f68efbf57e6e14bba18a6b9c6c5bc554fd
  end

  create_table "users", :force => true do |t|
    t.string  "name"
    t.string  "password",                                 :null => false
    t.string  "alias",                                    :null => false
    t.string  "image"
    t.string  "date",        :limit => 50
    t.string  "msn"
    t.string  "email"
    t.text    "description"
    t.integer "privileges",  :limit => 1,  :default => 0, :null => false
  end

  add_index "users", ["alias"], :name => "alias_UNIQUE", :unique => true

end
