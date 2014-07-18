@slideSwitch = ->
  $active = $("#slideshow .jumbo-image.active")
  $active = $("#slideshow .jumbo-image:last")  if $active.length is 0
  $next = (if $active.next().length then $active.next() else $("#slideshow .jumbo-image:first"))
  $active.addClass "last-active"
  $next.addClass "active"
  setTimeout (->
    $active.removeClass "active last-active"
  ), 1800

$ ->
  $("A[rel=\"external\"]").click ->
    window.open $(this).attr("href")
    false

  setInterval "slideSwitch()", 5000