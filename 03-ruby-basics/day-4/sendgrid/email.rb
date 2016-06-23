require "sendgrid-ruby"

mail_person = SendGrid::Client.new do |mp|
  mp.api_key = "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"
end

mail = SendGrid::Mail.new do |m|
  m.to = "orlando.caraballo@nycda.com"
  m.from = "orlando.caraballo@nycda.com"
  m.subject = "Hello Orlando!"
  m.text = "I sent this from in class, brah!"
end

puts mail_person.send(mail)

res = client.send(mail)
puts res.code
puts res.body