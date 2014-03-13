# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->

  $('.toothpick').click ->
    unless $(this).hasClass("active")
      $(this).parent().find('.active').removeClass('active')
    $(this).toggleClass("active")

  $(document).keydown (e) ->
    if e.keyCode is 37
      $('.active').removeClass('active').prev().addClass('active')
    else if e.keyCode is 39
      $('.active').removeClass('active').next().addClass('active')

$(document).ready(ready)