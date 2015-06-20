# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#rent-intro').backstretch [
    'http://res.cloudinary.com/drg9hguhu/image/upload/v1429329479/4_d7mabb.jpg'
    'http://res.cloudinary.com/drg9hguhu/image/upload/v1429329638/3_y9d2wp.jpg'
    'http://res.cloudinary.com/drg9hguhu/image/upload/v1429266583/FLP_8580_Ghungroo_xsy3ku.jpg'
    'http://res.cloudinary.com/drg9hguhu/image/upload/v1429329615/1_eloubr.jpg'
  ], duration: 3000, fade: "slow"