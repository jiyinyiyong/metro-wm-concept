
define (require, exports) ->

  elem = $ lilyturf.dom ->
    @div class: "config"

  $("body").append elem
  elem.css width: "0%"

  exports.config =
    elem: elem
    show: ->
      @elem.animate width: "28%"
    hide: ->
      @elem.animate width: "0%"
