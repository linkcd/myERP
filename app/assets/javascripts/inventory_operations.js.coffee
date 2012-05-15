# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
   $('#from_location_section').hide()
   $('#inventory_operation_operation_type').change ->
        type = $('#inventory_operation_operation_type').val()
        $('#from_location_section').show()
        $('#to_location_section').show()
        
        $('#from_location_section').hide() if type == 'inbound'
        $('#to_location_section').hide() if type == 'outbound'


