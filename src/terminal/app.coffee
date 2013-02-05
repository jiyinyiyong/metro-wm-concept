
define (require, exports) ->

  elem = $ lilyturf.dom ->
    @div class: "terminal",
      @div class: "glass",
        @textarea class: "code"
        @div class: "output",
          @div class: "control",
            @div id: "run", class: "button", (@text "Run")
            @div id: "close", class: "button", (@text "Close")
          @div id: "outlog"

  $("body").append elem
  elem.css height: "0%"

  run = elem.find "#run"
  close = elem.find "#close"
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
  close.click ->
    exports.terminal.hide()
  
  exports.terminal =
    elem: elem
    show: ->
      @elem.animate height: "80%"
    hide: ->
      @elem.animate height: "0%"

  exports.terminal