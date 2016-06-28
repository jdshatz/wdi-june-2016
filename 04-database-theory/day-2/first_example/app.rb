require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:app.db"

# index route
get "/" do
  @unicorns = Unicorn.all

  erb :index
end

get "/create" do
  Unicorn.create(name: "camille", skin_tone: "purple")
end