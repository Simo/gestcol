(($) ->
  $.popola = ->
    $.each array, (index, elem) ->
      hook = $(elem).attr("id")
      mat = $("#nascosta li[name=\"" + hook + "\"]").text()
      unless mat is ""
        wpid = $("#nascosta li[name=\"" + hook + "\"]").attr("id").split("_")[1]
        $(elem).html "<div id=\"wpid_" + wpid + "\">" + mat + "</div>"

) jQuery
