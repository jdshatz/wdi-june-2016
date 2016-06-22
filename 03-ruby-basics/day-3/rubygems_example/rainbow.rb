# this loads rainbow gem
require "rainbow"

puts "Who was the first president of the united states?"

# gets the answer, removes all whitespace and newlines then
#   makes the text all lowercase
answer = gets.chomp.downcase

if answer == "george washington"
  # if the answer is correct it will display
  #   "That is the correct answer" in dark green text
  puts Rainbow("That is the correct answer").darkgreen
else
  # if the answer is incorrect it will display
  #   "That is the wrong answer" in red text
  puts Rainbow("That is the wrong answer").red
end