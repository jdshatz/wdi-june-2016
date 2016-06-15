// first we get the element we need to work with (getElementById)
//  then we associate the behavior we want by setting onclick = [an
//  anonymous function]
document.getElementById("submit-button").onclick = function(event) {
  event.preventDefault()

  // when we click on the submit-button it logs the text 
  console.log("I am logging like a logger")
}

document.getElementById("name").onkeypress = function(event) {
  console.log(event.charCode)
}