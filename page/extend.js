// Generated by CoffeeScript 1.4.0

Array.prototype.remove = function(func) {
  var ret;
  ret = [];
  this.forEach(function(elem) {
    if (elem !== func) {
      return ret.push(elem);
    }
  });
  return ret;
};
