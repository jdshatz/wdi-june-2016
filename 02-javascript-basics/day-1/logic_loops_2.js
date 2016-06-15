function logit(text) {
  console.log(text)
}

logit("I am logging this friends")

function logitNoArguments() {
  console.log("I am logging this with no arguments")
}

logitNoArguments()

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

chooseDoor(1)