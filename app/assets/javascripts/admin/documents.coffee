# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready ->
  # Init Select2 - Basic Multiple
  $('.select2-multiple').select2
    placeholder: 'Выбрать услуги, которые относятся к данному документу'
    allowClear: true