# sets name equal to "Orlando"
name = "Orlando"

# sets holidays equal to a list of values
#   "Christmas", "New Years", "Independence Day"
holidays = [
  "Christmas",
  "New Years",
  "Independence Day"
]

# sets holidays_and_dates to a hash of key/value pairs
#   the keys are associated with values like a dictionary
#   that stores words (keys) and their definitions (values)
holidays_and_dates = {
  "Christmas" => "Dec 25",
  "New Years" => "Jan 1",
  "Independence Day" => "July 4"
}

# displays "Hi my name is: 'Orlando'"
puts "Hi my name is: " + name

# displays the first element of the array ("Christmas")
puts holidays[0]

# displays every element of the hash by key/value pair
puts holidays_and_dates