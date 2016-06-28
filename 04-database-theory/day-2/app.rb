require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:app.db"

get "/" do
  @unicorns = Unicorn.all
  
  erb :index
end