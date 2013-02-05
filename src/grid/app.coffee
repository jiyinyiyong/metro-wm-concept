
define (require, exports) ->

  display = (place, obj) ->
    elem = $ lilyturf.dom ->
      @div class: "card",
        @text obj.name
    place.append elem
    if obj.type is "code"
      elem.click ->
        CoffeeScript.run obj.code

  exports.grid =
    place: $ "#view"
    show: ->
      elem = $ lilyturf.dom ->
        @div class: "grid",
          @div class: "apps",
            @div class: "title", (@text "Apps")
          @div class: "tasks",
            @div class: "title", (@text "Tasks")
          @div class: "notes",
            @div class: "title", (@text "Notes")

      apps = elem.find ".apps"
      tasks = elem.find ".tasks"
      notes = elem.find ".notes"
      
      @place.empty().append elem
      self = @
      
      @data.apps.forEach (obj) ->
        display apps, obj
      @data.tasks.forEach (obj) ->
        display tasks, obj
      @data.notes.forEach (obj) ->
        display notes, obj

      delay 10, ->
        $(".card").attr "class", "card emerge"

    data:
      apps: []
      tasks: []
      notes: []