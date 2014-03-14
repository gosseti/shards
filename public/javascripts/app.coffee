ready = ->

  size = window.getComputedStyle(document.body, ":after").getPropertyValue("content")

  if size is "break2"

    $(".shard").click ->
        $(this).parent().find(".active").removeClass "active"  unless $(this).hasClass("active")
        $(this).toggleClass("active")
    $(document).keydown((e) ->
      if e.keyCode is 37
        $(".active").removeClass("active").prev().addClass "active"
      else if e.keyCode is 39
        $(".active").removeClass("active").next().addClass "active"
      else if e.keyCode is 27
        $('.active').removeClass('active')
    )

    $(document).click ->
      $('.active').removeClass('active')
    $(".shard").click (e) ->
      e.stopPropagation() # This is the preferred method.
      false # This should not be used unless you do not want

  else

    $(".shards").magnificPopup
      delegate: 'a'
      type: 'image'
      removalDelay: 300
      mainClass: "mfp-fade"
      gallery:
        enabled: true

$(document).ready ready