(function() {
  var COLOR_CODES, generateColorFns;
  COLOR_CODES = {
    black: 30,
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    white: 37
  };
  generateColorFns = function(obj) {
    var ascii_seq, code, fn, _results;
    _results = [];
    for (fn in COLOR_CODES) {
      ascii_seq = COLOR_CODES[fn];
      code = COLOR_CODES[fn];
      _results.push((function(code, fn) {
        obj[fn] = function(str) {
          return "\033[" + code.toString() + "m" + str + "\033[0m";
        };
        return obj["p" + fn] = function(str) {
          return console.log(obj[fn](str));
        };
      })(code, fn));
    }
    return _results;
  };
  generateColorFns(exports);
}).call(this);
