console.log("hello everyone")

// we are changing the html of the element with id of "element"
document.getElementById("element").innerHTML = "HELLO WORLD"

// here we set two variables
//  the first is equal to 10
//  the second is equal to 1000
var number1 = 10
var number2 = 1000

// this displays the 1010 to the console
console.log(number1 + number2)

// we set two more variables
var string1 = "I am"
var string2 = "Orlando"

// this combines/concatenates both pieces of text (strings) together
alert(string1 + " " + string2)

// we create an object named "person" with the appropriate values
//  for firstName, lastName, birthday and interests
var person = {
  firstName: "Orlando",
  lastName: "Caraballo",
  birthday: "12/01/1983",
  interests: [
    "video games",
    "movies",
    "FOOD"
  ]
}

// we can log person on the console
//  and it will show us all the properties
//  on individual lines
console.log(person)