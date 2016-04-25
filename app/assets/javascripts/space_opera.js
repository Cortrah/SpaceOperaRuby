var inst;
this.RaphHexMap = (inst = window.RaphHexGrid) != null ? inst : {};
this.RaphHexMap.Hex = Hex;
this.RaphHexMap.Map = Map;

window.SpaceOpera = {
    Models: {},
    Collections: {},
    Views: {},
    Routers: {},
    initialize: function() {
        var inst;
        this.RaphHexMap = (inst = window.RaphHexMap) != null ? inst : {};
        return this.RaphHexMap.map = new this.RaphHexMap.Map(  'raphaelHexMap',
                                                                    $(window).width(),
                                                                    $(window).height()
            );
    }
};

$(document).ready(function() {
  return SpaceOpera.initialize();
});

//===========================
//  keyhandling
//===========================
$(document).keydown(function (e) {
    // up arrow key
    if (e.keyCode == 38) {
        //$("#_x30_").attr("fill", "#00FF00");
        document.fillNum = 0;
        return false;
    }
    // down arrow key
    if (e.keyCode == 40) {
        //$("#_x30_").attr("fill", "#336600");
        document.fillNum = 1;
        return false;
    }
    // left arrow key
    if (e.keyCode == 37) {
        document.fillNum = 2;
        return false;
    }
    // right arrow key
    if (e.keyCode == 39) {
        document.fillNum = 3;
        return false;
    }
});