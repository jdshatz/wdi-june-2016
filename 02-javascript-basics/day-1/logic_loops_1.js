var number = 5

// here we check to see if number is less than 10
//  if so then log "less than 10"
if(number < 10) {
  console.log("less than 10")
} else {
  // whenever you have a else keyword you must have a corresponding if
  console.log("the var value is " + number + " and is greater than 10")
}

var str = "is this the same?"

// we check to see if "str" matches the value "is this the same"
if(str == "is this the same") {
  // in this case it doesn't because its missing a question mark
  console.log("this is the same")
}