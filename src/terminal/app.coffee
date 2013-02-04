
define (require, exports) ->

  elem =$  lilyturf.dom ->
    @div class: "terminal",
      @div class: "glass",
        @textarea class: "code"
        @div class: "output",
          @div id: "run",
            @text "Run"
          @div id: "outlog"

  $("body").append elem
  elem.css height: "0%"

  run = elem.find "#run"
  outlog = elem.find "#outlog"
  window.puts = ->
    res = []
    for key, value of arguments
      res.push value
    that = lilyturf.dom ->
      @div class: "logline",
        @text (res.join ", ")
    outlog.prepend ($ that)
  run.click ->
    code = elem.find(".code").val()
    CoffeeScript.eval code
  
  exports.terminal =
    elem: elem
    show: ->
      @elem.animate height: "80%"
    hide: ->
      @elem.animate height: "0%"

  exports.terminal