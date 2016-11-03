# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready ->
  # Init Select for Patterns - Basic Multiple
  $('.select-static-pages-category').select2
    placeholder: 'К какой странице на сайте привязать данную страницу?'
    allowClear: true
    # minimumInputLength: 3