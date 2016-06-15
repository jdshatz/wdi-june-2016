$(document).ready(function(){

  $("a").click(function(){
    // we need this to prevent anchor from loading
    //  a different page
    event.preventDefault()

    // this animation moves the anchor to the right
    //  by 500px and makes it a transparent
    // the keyword "this" represents the current element you are working
    //  with, in this case it refers to the anchor we clicked on
    $(this).animate({
      opacity: 0.5,
      left: "500px"
    }, function(){

      // we can chain events together in sequence
      //  here we run this fontSize/top animation after the prior
      //  one is completed
      $(this).animate({
        fontSize: "40px",
        top: "100px"
      })
    
    })
  
  })
})