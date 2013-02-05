// Generated by CoffeeScript 1.4.0

define(function(require, exports) {
  var display;
  display = function(place, obj) {
    var elem;
    elem = $(lilyturf.dom(function() {
      return this.div({
        "class": "card"
      }, this.text(obj.name));
    }));
    place.append(elem);
    if (obj.type === "code") {
      return elem.click(function() {
        return CoffeeScript.run(obj.code);
      });
    }
  };
  return exports.grid = {
    place: $("#view"),
    show: function() {
      var apps, elem, notes, self, tasks;
      elem = $(lilyturf.dom(function() {
        return this.div({
          "class": "grid"
        }, this.div({
          "class": "apps"
        }, this.div({
          "class": "title"
        }, this.text("Apps"))), this.div({
          "class": "tasks"
        }, this.div({
          "class": "title"
        }, this.text("Tasks"))), this.div({
          "class": "notes"
        }, this.div({
          "class": "title"
        }, this.text("Notes"))));
      }));
      apps = elem.find(".apps");
      tasks = elem.find(".tasks");
      notes = elem.find(".notes");
      this.place.empty().append(elem);
      self = this;
      this.data.apps.forEach(function(obj) {
        return display(apps, obj);
      });
      this.data.tasks.forEach(function(obj) {
        return display(tasks, obj);
      });
      this.data.notes.forEach(function(obj) {
        return display(notes, obj);
      });
      return delay(10, function() {
        return $(".card").attr("class", "card emerge");
      });
    },
    data: {
      apps: [],
      tasks: [],
      notes: []
    }
  };
});
