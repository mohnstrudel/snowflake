$(document).on('turbolinks:load', function() {
  'use strict';
  Core.init();
  Demo.init();
  $('.select2-single').select2({
    placeholder: 'Выберите значение...'
  });
  $('.select-multiple-colors').select2({
    placeholder: 'Выбрать доступные цвета для товара',
    allowClear: true
  });
  $('.select-category-id').select2({
    placeholder: 'Выбрать категорию для подкатегории',
    allowClear: true
  });
  $('.select-masters-category').select2({
    placeholder: 'Выбрать категорию для мастера',
    allowClear: true
  });
  $('.select-multiple-sizes').select2({
    placeholder: 'Выбрать доступные размеры для товара',
    allowClear: true
  });
  $('.select-multiple-borders').select2({
    placeholder: 'Выбрать доступные бортики для товара',
    allowClear: true
  });
  $('.select2-primary').select2();
  $('.select2-success').select2();
  $('.select2-info').select2();
  $('.select2-warning').select2();
  $('#multiselect1').multiselect();
  $('#multiselect2').multiselect({
    includeSelectAllOption: true
  });
  $('#multiselect3').multiselect();
  $('#multiselect4').multiselect({
    enableFiltering: true
  });
  $('#multiselect5').multiselect({
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-primary'
  });
  $('#multiselect6').multiselect({
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-info'
  });
  $('#multiselect7').multiselect({
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-success'
  });
  $('#multiselect8').multiselect({
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-warning'
  });
  $('#daterangepicker1').daterangepicker();
});
