// returns a random integer between 1-255
function randomInteger() {
  return Math.floor(Math.random() * (255 - 1)) + 1;
}

function setRandomColor(element) {
  // this creates a random integer 3 times
  //  and stores each value within an array
  var colors = [randomInteger(), randomInteger(), randomInteger()]

  // this takes all elements of the array, creates a string
  //  out of them delimited by a comma and also uses that to set
  //  the color of the element you clicked on to that random value
  // e.g. -> background: rgb(89, 245, 11)
  element.setAttribute("style", 
    "background: rgb(" + colors.join(",") + ")"
  )
}

// this will force the function to run when the window is finished
//  loading
// this is similar to jquery.on(ready, function(){}) but not exactly 
// the same http://stackoverflow.com/a/3698214
window.onload = function() {
  var interval = null

  document.getElementsByTagName("body")[0].addEventListener("click", function(){
    var divs = document.getElementsByTagName("div")    
    var column = event.target

    // sets the random color
    setRandomColor(column)

    // when element is current rotated
    if(column.className == "rotate") {
      column.classList.remove("rotate")
    } else {
      column.classList.add("rotate")
    }
  })
}

