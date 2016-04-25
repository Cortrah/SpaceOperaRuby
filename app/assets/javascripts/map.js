var Map;

Map = (function() {
    function Map(divId, width, height) {
        var ref, ref1;
        this.rad = 24;
        this.vUnit = Math.sqrt(3) / 2 * this.rad;
        this.hUnit = this.rad / 2;
        ref = [divId, width, height], this.divId = ref[0], this.width = ref[1], this.height = ref[2];
        ref1 = [this.hUnit * 3, this.vUnit * 2], this.cellWidth = ref1[0], this.cellHeight = ref1[1];
        this.stage = Raphael(this.divId, this.width, this.height);
        this.draw();
    }

  Map.prototype.cols = function() {
    return Math.ceil(this.width / this.cellWidth);
  };

  Map.prototype.rows = function() {
    return Math.ceil(this.height / this.cellHeight);
  };

  Map.prototype.getCellCoords = function(col, row) {
    var even;
    even = col % 2;
    return {
      x: col * this.cellWidth,
      y: row * this.cellHeight + this.cellHeight * even * 0.5
    };
  };

  Map.prototype.draw = function() {
    var col, i, ref, results, row;
    results = [];

    for (row = i = 0, ref = this.rows(); 0 <= ref ? i <= ref : i >= ref; row = 0 <= ref ? ++i : --i) {
      results.push((function() {
        var j, ref1, results1;
        results1 = [];
        for (col = j = 0, ref1 = this.cols(); 0 <= ref1 ? j <= ref1 : j >= ref1; col = 0 <= ref1 ? ++j : --j) {
          results1.push(new Hex(this.stage, this.getCellCoords(col, row), this.rad));
        }
        return results1;
      }).call(this));
    }
    return results;
  };

  return Map;

})();
