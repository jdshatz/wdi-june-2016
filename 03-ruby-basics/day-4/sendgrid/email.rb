# loads the sendgrid gem
#   we need this in order to send email
require "sendgrid-ruby"

# create a new mail person to send mail
sendgrid = SendGrid::Client.new do |c|
  c.api_key = ENV["SENDGRID_APIKEY"]
end

# creates the mail to send with a:
#   to, from, subject and text fields 
# (text represents the email body)
email = SendGrid::Mail.new do |m|
  m.to = "orlando.caraballo@nycda.com"
  m.from = "orlando.caraballo@nycda.com"
  m.subject = "Hello Orlando!"
  m.text = "I sent this from in class, brah!"
end

# email = SendGrid::Mail.new(
#   "orlando.caraballo@nycda.com",
#   "sdfs",
#   "orlando.caraballo@nycda.com",
#   "sdfsdfs"  
# )

# sendgrid.send_at(email)

# p email

# sends the email
res = sendgrid.send(email)

# displays the response code (200, 300, 400, etc)
# p res.code

# displays the response body (OK, Error, etc)
# p res.body