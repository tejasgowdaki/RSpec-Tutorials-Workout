require "active_record"
require "sinatra"

ActiveRecord::Base.establish_connection(
  adapter: :sqlite3,
  database: File.expand_path("./../db/test.sqlite3", __FILE__)
)
