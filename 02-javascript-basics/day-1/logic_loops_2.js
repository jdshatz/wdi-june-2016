// this defines a function you can use later on in the code
function logit(text) {
  console.log(text)
}

// this invokes the function we created above
logit("I am logging this friends")


// this defines a function but with no arguments
function logitNoArguments() {
  console.log("I am logging this with no arguments")
}

// here we invoke the function we defined above
logitNoArguments()

// we define a function named "chooseDoor" where
//  depending on which door number we pass in as an argument
//  indicated by the argument "doorNum" we log different results into the console
function chooseDoor(doorNum) {
  if(doorNum == 1) {
    console.log("you won a car")
  } else if(doorNum == 2) {
    console.log("you won another day in wdi")
  } else if(doorNum == 3) {
    console.log("you won a glass of water :(")
  } else {
    console.log("you won nothing")
  }
}

// here we invoke the "chooseDoor" function and pass it the value 1
chooseDoor(1)