# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ($) ->
  $('#contact-form').submit ->
    email = $('#email').val()
    # get email field value
    name = $('#name').val()
    # get name field value
    msg = $('#message').val()
    phone = $('#phone').val()
    # get message field value
    $.ajax(
      type: 'POST'
      url: 'https://mandrillapp.com/api/1.0/messages/send.json'
      data:
        'key': '5I72PXm3FDR4oSxveGBVYw'
        'message':
          'from_email': email
          'from_name': name
          'headers': 'Reply-To': email
          'subject': 'Website Contact Form Submission'
          'text': name + phone + msg 
          'to': [ {
            'email': 'contact@marigolddancestudio.com'
            'name': ''
            'type': 'to'
          } ]).done((response) ->
      $('#post-message').modal()
      # show success message
      $('#name').val ''
      # reset field after successful submission
      $('#email').val ''
      # reset field after successful submission
      $('#message').val ''
      $('#phone').val ''
      # reset field after successful submission
      return
    ).fail (response) ->
      alert 'Error sending message.'
      return
    false
    # prevent page refresh
  return