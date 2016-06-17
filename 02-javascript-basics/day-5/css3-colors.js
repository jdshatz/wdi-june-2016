function randomInteger() {
  return Math.floor(Math.random() * (255 - 0)) + 0;
}

function setRandomColor(element) {
  var colors = [randomInteger(), randomInteger(), randomInteger()]

  element.setAttribute("style", 
    "background: rgb(" + colors.join(",") + ")"
  )
}

window.onload = function() {
  var interval = null

  document.getElementsByTagName("body")[0].addEventListener("click", function(){
    var divs = document.getElementsByTagName("div")    
    var column = event.target

    setRandomColor(column)

    // when element is current rotated
    if(column.className == "rotate") {
      column.classList.remove("rotate")
    } else {
      column.classList.add("rotate")
    }
  })
}

