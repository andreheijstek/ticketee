# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#add_file").off().on "ajax:success", (event, data) ->
    console.log(event);
    $("#attachments").append data
    $(this).data "params", { index: $("#attachments div.file").length }

