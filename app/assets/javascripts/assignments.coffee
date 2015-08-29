# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'click', '#cash-input', (event) ->
  $('#cash-value').show()
  $('#points-value').hide()
  #console.log($(@))

$(document).on 'click', '#point-input', (event) ->
  $('#points-value').removeClass('hidden')
  $('#points-value').show()
  $('#cash-value').hide()

$(document).on 'change', '#assignment_frequency', (event) ->
  if (this.value == 'daily')
    $('#days-of-week-select').show()
    $('#start-on-value').hide()
  else
    $('#start-on-value').removeClass('hidden')
    $('#days-of-week-select').hide()
    $('#start-on-value').show()
