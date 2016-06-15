$(document).ready(function(){

  $("a").click(function(){
    event.preventDefault()

    alert("it worked")

    $(this).animate({
      opacity: 0.5,
      left: "500px",
      fontSize: "40px"
    }, function(){

      $(this).animate({
        top: "100px"
      })
    
    })
  
  })
})