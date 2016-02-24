//  Place all the behaviors and hooks related to the matching controller here.
//  All this logic will automatically be available in application.js.
//  You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
    $('table#failed-transactions').attr('style', 'background-color:#FF0000')
    $('table#disputed-transactions').attr('style', 'background-color:#FF5400')
});
