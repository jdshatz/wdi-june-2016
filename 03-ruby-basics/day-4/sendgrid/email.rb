# loads the sendgrid gem
#   we need this in order to send email
require "sendgrid-ruby"

# create a new mail person to send mail
mail_person = SendGrid::Client.new do |mp|
  mp.api_key = ENV["SENDGRID_APIKEY"]
end

# creates the mail to send with a:
#   to, from, subject and text fields 
# (text represents the email body)
mail = SendGrid::Mail.new do |m|
  m.to = "orlando.caraballo@nycda.com"
  m.from = "orlando.caraballo@nycda.com"
  m.subject = "Hello Orlando!"
  m.text = "I sent this from in class, brah!"
end

# sends the email
res = mail_person.send(mail)

# displays the response code (200, 300, 400, etc)
puts res.code

# displays the response body (OK, Error, etc)
puts res.body