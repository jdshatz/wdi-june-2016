require "sinatra"

get "/" do
  @name = "Orlando"

  erb :index
end

get "/special" do
  erb :special
end

get "/about" do
  "I am about mine"
end

get "/careers" do
  "Here are some careers bro"
end