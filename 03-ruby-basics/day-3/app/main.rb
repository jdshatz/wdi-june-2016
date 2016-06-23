# loads sinatra
require "sinatra"

# creates the / route on http://localhost:4567
get "/" do
  # creates an instance variable that we can use
  #   in the index.erb template
  @name = "Orlando"

  erb :index
end

# creates the /special route on http://localhost:4567
get "/special" do
  erb :special
end

# creates the /about route on http://localhost:4567
get "/about" do
  "I am about mine"
end

# creates the /careers route on http://localhost:4567
get "/careers" do
  "Here are some careers bro"
end