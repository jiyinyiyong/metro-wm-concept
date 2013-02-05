
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
  
  config = require "./config/app"
  terminal = require "./terminal/app"
  grid = require "./grid/app"
  program = require "./program/app"

  window.config = config
  window.terminal = terminal
  window.grid = grid
  window.program = program

  data = require "./data"
  grid.data = data.grid

  # terminal.show()
  # config.show()
  grid.show()