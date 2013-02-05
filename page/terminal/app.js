// Generated by CoffeeScript 1.4.0

define(function(require, exports) {
  var close, elem, outlog, run;
  elem = $(lilyturf.dom(function() {
    return this.div({
      "class": "terminal"
    }, this.div({
      "class": "glass"
    }, this.textarea({
      "class": "code"
    }), this.div({
      "class": "output"
    }, this.div({
      "class": "control"
    }, this.div({
      id: "run",
      "class": "button"
    }, this.text("Run")), this.div({
      id: "close",
      "class": "button"
    }, this.text("Close"))), this.div({
      id: "outlog"
    }))));
  }));
  $("body").append(elem);
  elem.css({
    height: "0%"
  });
  run = elem.find("#run");
  close = elem.find("#close");
  outlog = elem.find("#outlog");
  window.puts = function() {
    var key, res, that, value;
    res = [];
    for (key in arguments) {
      value = arguments[key];
      res.push(value);
    }
    that = lilyturf.dom(function() {
      return this.div({
        "class": "logline"
      }, this.text(res.join(", ")));
    });
    return outlog.prepend($(that));
  };
  run.click(function() {
    var code;
    code = elem.find(".code").val();
    return CoffeeScript["eval"](code);
  });
  close.click(function() {
    return exports.terminal.hide();
  });
  exports.terminal = {
    elem: elem,
    show: function() {
      return this.elem.animate({
        height: "80%"
      });
    },
    hide: function() {
      return this.elem.animate({
        height: "0%"
      });
    }
  };
  return exports.terminal;
});
