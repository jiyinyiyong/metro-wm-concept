
define (require, exports) ->

  require "./extend"

  viewport =
    width: window.innerWidth
    height: window.innerHeight
    update: ->
      @width = window.innerWidth
      @height = window.innerHeight
      # log "udpate viewport:", viewport
    registry: []
    emiter: ->
      @registry.forEach (f) -> f()
    bind: (callback) ->
      unless callback in @registry
        registry.push callback
    drop_event: (f) ->
      @registry.remove f

  window.addEventListener "resize", ->
    viewport.update()
  
  terminal = require "./terminal/app"
  config = require "./config/app"

  main =
    grid: require "./grid/app"
    program: require "./program/app"
    state: undefined
    load: (name) ->

  window.expose =
    config: config
    term: terminal

  # terminal.show()