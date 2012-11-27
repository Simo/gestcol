# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  init = ->
    $.ajax "http://localhost:3000/timetable/1.js",
      success: (data) ->


  $("#ttContainer").delegate ".day li.schedule", "click", (e) ->
    e.preventDefault()
    unless $(this).children().length is 0
      id = $(this).children().attr("id").split("_")[1] #recuperare l'id del pezzetto di prospetto settimanale
      #chiamata ajax
      $.ajax("http://localhost:3000/weekly_prospects/" + id + "/edit.js",
        context: $(this)
      ).done ->
        header = "Programmazione della fascia " + $(this).attr("name") + " di " + $(this).parent().attr("id")
        $(".modal-header h4").text header
        $(".modal-header h4").attr "name", id
        $("#weekly_prospect_day_id").val $(this).attr("id").split("_")[1]
        $("#weekly_prospect_timeframe_id").val $(this).attr("id").split("_")[2]
        $("#weekly_prospect_grade_id").val $(this).attr("id").split("_")[3]
        $(".modal-footer").html "<button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Chiudi</button><button id=\"update_orario\" class=\"btn btn-primary\">Aggiorna</button>"
        $("#modalBox").modal "show"

    else
      $.ajax("http://localhost:3000/weekly_prospects/new.js",
        context: $(this)
      ).done ->
        header = "Programmazione della fascia " + $(this).attr("name") + " di " + $(this).parent().attr("id")
        $(".modal-header h4").text header
        $("#weekly_prospect_day_id").val $(this).attr("id").split("_")[1]
        $("#weekly_prospect_timeframe_id").val $(this).attr("id").split("_")[2]
        $("#weekly_prospect_grade_id").val $(this).attr("id").split("_")[3]
        $(".modal-footer").html "<button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Chiudi</button><button id=\"salva_nuovo\" class=\"btn btn-primary\">Salva</button>"
        $("#modalBox").modal "show"


  $("#modalBox").delegate "#salva_nuovo", "click", (e) ->
    e.preventDefault()
    $.ajax "http://localhost:3000/weekly_prospects.js",
      type: "POST"
      data: $("form").serialize()
      success: ->
        $("#modalBox").modal "hide"


  $("#modalBox").delegate "#update_orario", "click", (e) ->
    e.preventDefault()
    id = $(".modal-header h4").attr("name")
    $.ajax "http://localhost:3000/weekly_prospects/" + id + ".js",
      type: "POST"
      data: $("form").serialize()
      success: ->
        $("#modalBox").modal "hide"


  init()