$(document).ready(function(){

  $("a").click(function(){
    event.preventDefault()

    $(this).animate({
      opacity: 0.5,
      left: "500px"
    }, function(){

      $(this).animate({
        fontSize: "40px",
        top: "100px"
      })
    
    })
  
  })
})