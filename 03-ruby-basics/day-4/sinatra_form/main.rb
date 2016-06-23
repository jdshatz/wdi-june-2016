# loads sinatra gem
require "sinatra"

# loads sendgrid-ruby gem
#   we need this in order to send email
require "sendgrid-ruby"

# method: get
# action: "/"
get "/" do
  erb :home
end

# method: get
# action: "/special"
get "/special" do
  # in the layout page we have a link
  #   with ?points=20 in the url of the href
  #   the params hash will have a key named :points
  #   with the value of 20
  params.inspect
end

# method: get
# action: "/email"
get "/email" do
  erb :email
end

# method: post
# action: "/email_response"
post "/email_response" do

  # creates the mail person object or the client
  #   that will send the email
  mail_person = SendGrid::Client.new do |mp|
    mp.api_key = ENV["SENDGRID_APIKEY"]
  end

  # creates the email object
  mail = SendGrid::Mail.new do |m|
    m.to = params[:to]
    m.from = params[:from]
    m.subject = params[:subject]
    m.text = params[:body]
  end

  # sends the email
  response = mail_person.send(mail)

  # displays the response code (200, 300, 400, etc)
  puts response.code

  # displays the response body (OK, Error, etc)
  puts response.body

  # redirects to email page
  redirect "/email"
end


