# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  series = $('#quote_series_id').html()
  $('#quote_manufacturer_id').change ->
    manufacturer = $('#quote_manufacturer_id :selected').text()
    options = $(series).filter("optgroup[label='#{manufacturer}']").html()
    if options
      $('#quote_series_id').html(options)
    else
      $('#quote_series_id').empty()


