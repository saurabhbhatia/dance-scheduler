$(document).ready ->
  $(".mobile-nav").click (event) ->
    event.stopPropagation()
    $("#nav ul").toggle()
  $(document).click ->
    $("#nav ul").hide()