require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:database.sqlite3"

get "/" do
  @pirates = Pirate.all

  erb :index
end

get "/create" do
  Pirate.create(fname: "orlando", lname: "c", bday: "01/12/1983")
end