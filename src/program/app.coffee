
define (require, exports) ->

  elem = $ lilyturf.dom ->
    @div class: "program",
      @div class: "control",
        @div class: "button hide", (@text "hide")
      @div class: "paper",
        @text "a demo of program"

  exports.program =
    elem: elem
    place: $ "#view"
    show: ->
      @place.empty().append @elem
      @elem.css height: "0%"
      @elem.animate height: "100%", 240

      @elem.find(".control .hide").click ->
        log "show grid"
        window.grid.show()