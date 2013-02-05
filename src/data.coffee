
define (require, exports) ->

  exports.grid =
    apps: [
      {
        name: "Show Terminal"
        type: "code"
        code: "terminal.show()"
      }
      {
        name: "Show Config"
        type: "code"
        code: "config.show()"
      }
      {
        name: "Show Program"
        type: "code"
        code: "program.show()"
      }
      {name: "demo 4"}
    ]
    tasks: [
      {name: "demo 5"}
      {name: "demo 6"}
      {name: "demo 7"}
    ]
    notes: [
      {name: "demo 8"}
      {name: "demo 9"}
    ]

  exports