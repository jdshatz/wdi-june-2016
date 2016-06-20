$(document).ready(function(){
  $("a").data("foo", "dskjhksdlj")

  $("a").click(function(event){
    var imgUrl = $(event.target).data("img-url")

    $("body").append("<div class='overlay'><img src='" + imgUrl + "'></overlay>")
  })

  $("body").on("click", "img", function(){
    $(this).hide()
    $(this).closest(".overlay").hide()
  })

  console.log($("a").data("img-url"))
})