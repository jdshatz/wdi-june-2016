// ensures we only run this code once
//  the entire html document is loaded
$(document).ready(function() {

  // sets an event handler that responds to clicking an
  //  anchor
  $("a").click(function(event){
    // gets the current element that was clicked
    //  then gets the value of the attribute "img-url"
    var imgUrl = $(event.target).data("img-url")

    // appends a new img element wrapped in a div to the body
    //  notice the src of the img is set to the whatever
    //  imgUrl is set equal to
    $("body").append("<div class='overlay'><img src='" + imgUrl + "'></div>")
  })

  // this adds a new click handler
  $("body").on("click", "img", function(event){
    // hides the element clicked
    $(event.target).hide()

    // finds the closest element with the class .overlay
    //  and hides that too
    $(event.target).closest(".overlay").hide()
  })
})