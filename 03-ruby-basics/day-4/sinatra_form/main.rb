require "sinatra"
require "sendgrid-ruby"

# method: get
# action: "/"
get "/" do
  erb :home
end

# method: get
# action: "/email"
get "/email" do
  erb :email
end

# method: post
# action: "/email_response"
post "/email_response" do
  mail_person = SendGrid::Client.new do |mp|
    mp.api_key = ENV["SENDGRID_APIKEY"]
  end

  mail = SendGrid::Mail.new do |m|
    m.to = params[:to]
    m.from = params[:from]
    m.subject = params[:subject]
    m.text = params[:body]
  end

  res = mail_person.send(mail)
  puts res.code
  puts res.body

  redirect("/email")
end


