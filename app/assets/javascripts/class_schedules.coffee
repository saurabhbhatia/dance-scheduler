# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#schedule').dataTable 
  'order': [ [
    2
    'desc'
  ] ], "pagingType": "full_numbers", "displayLength": 10
  return

  $('#pricing').dataTable 
  'order': [ [
    2
    'desc'
  ] ], "pagingType": "full_numbers", "displayLength": 10
  return