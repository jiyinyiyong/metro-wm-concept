
define (require, exports) ->

  elem = $ lilyturf.dom ->
    @div class: "config",
      @div class: "options"
      @div class: "control",
        @div class: "button hide", (@text "hide")

  $("body").append elem
  elem.css width: "0%"

  elem.find(".hide").click ->
    exports.config.hide()

  exports.config =
    elem: elem
    show: ->
      @elem.animate width: "28%"
    hide: ->
      @elem.animate width: "0%"
