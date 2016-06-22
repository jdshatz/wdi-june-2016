require "rainbow"

puts "Who was the first president of the united states?"

answer = gets.chomp.downcase

if answer == "george washington"
  puts Rainbow("That is the correct answer").darkgreen
else
  puts Rainbow("That is the wrong answer").red
end