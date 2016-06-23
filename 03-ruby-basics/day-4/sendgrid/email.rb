require "sendgrid-ruby"

mail_person = SendGrid::Client.new do |mp|
  mp.api_key = ENV["SENDGRID_APIKEY"]
end

mail = SendGrid::Mail.new do |m|
  m.to = "orlando.caraballo@nycda.com"
  m.from = "orlando.caraballo@nycda.com"
  m.subject = "Hello Orlando!"
  m.text = "I sent this from in class, brah!"
end

res = mail_person.send(mail)
puts res.code
puts res.body