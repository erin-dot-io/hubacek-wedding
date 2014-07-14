$ ->
  $("A[rel=\"external\"]").click ->
    window.open $(this).attr("href")
    false
