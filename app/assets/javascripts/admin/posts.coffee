# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready ->
  
  # Init Select2 - Basic Multiple
  $('.select-posts-category').select2
    placeholder: 'Выбрать категорию для новости'
    allowClear: true
    # minimumInputLength: 3
