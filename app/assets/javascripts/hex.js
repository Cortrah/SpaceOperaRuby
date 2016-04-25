var Hex,
    bind = function (fn, scope) {
        return function () {
            return fn.apply(scope, arguments);
        };
    };

Hex = (function () {
    function Hex(stage, coords, radius) {
        this.unhovered = bind(this.unhovered, this);
        this.hovered = bind(this.hovered, this);
        this.doClick = bind(this.doClick, this);
        this.mousedown = bind(this.mousedown, this);
        this.mouseup = bind(this.mouseup, this);

        var ref;
        ref = [ stage, coords.x, coords.y, radius],
                this.stage = ref[0],
                this.x = ref[1],
                this.y = ref[2],
                this.radius = ref[3];
        this.colors = {
            "hovered": "#FFFFFF",
            "unpainted": "#F5F5F5",
            "painted": "#D5D5D5",
            "hover-painted": "#DDDDDD"
        };

        this.textures = {
            "clear":"#F5F5F5",
            "forest":"url('images/tiles/trees_2b.png')",
            "hills":"url('images/tiles/hills.png')",
            "mountain":"url('images/tiles/sandysoil.png')",
            "water":"url('images/tiles/water.png')"
        }

        this.painted = false;
        this.draw();
    }

    Hex.prototype.path = function () {
        var path, xUnit, yUnit;
        xUnit = this.radius / 2;
        yUnit = Math.sqrt(3) / 2 * this.radius;
        path = "m0,0 ";
        path = path + -xUnit + "," + yUnit + " ";
        path = path + -this.radius + "," + 0 + " ";
        path = path + -xUnit + "," + -yUnit + " ";
        path = path + xUnit + "," + -yUnit + " ";
        path = path + this.radius + "," + 0 + " ";
        return path + " z";
    };

    Hex.prototype.draw = function () {
        this.drawCell();
        return this.attachHandlers();
    };

    Hex.prototype.drawCell = function () {
        this.cell = this.stage.path(this.path());
        this.cell.attr({
            "fill": this.colors['unpainted'],
            "stroke-width": 2,
            "stroke": "#CCCCCC"
        });
        return this.cell.transform("t" + this.x + "," + this.y + "s1");
    };

    Hex.prototype.changeColor = function (c) {
        switch(document.fillNum){
            case(0):{
                return this.cell.attr({
                    "fill": this.textures['clear']
                });
                break;
            }
            case(1):{
                return this.cell.attr({
                    "fill": this.textures['forest']
                });
                break;
            }
            case(2):{
                return this.cell.attr({
                    "fill": this.textures['hills']
                });
                break;
            }
            case(3):{
                return this.cell.attr({
                    "fill": this.textures['mountain']
                });
                break;
            }
        }

    };

    Hex.prototype.changeFill = function (c) {
        return this.cell.attr({
            "fill": this.colors[c]
        });
    };

    Hex.prototype.doClick = function () {
        this.painted = !this.painted;
        return this.hovered();
    };

    Hex.prototype.mousedown = function () {
        // toggle whether to paint or not based on the state of the hex
        window.SpaceOpera.painting = true;
        this.painted = true;
        return this.mousedown();
    };

    Hex.prototype.mouseup = function () {
        // toggle whether to paint or not based on the state of the hex
        var shouldPaint = !this.painted && window.SpaceOpera.painting;
        this.painted = shouldPaint;
        window.SpaceOpera.painting = false;
        return this.mouseup();
    };

    Hex.prototype.hovered = function () {
        this.cell.toFront();
        if(window.SpaceOpera.painting == true){
            this.painted = true;
            this.changeColor('hover-painted');
        }

        if (this.painted) {
            this.changeColor('hover-painted');
        } else {
            this.changeColor('hovered');
        }
        return this.cell.animate({
            transform: "t" + this.x + "," + this.y + "s1.1"
        }, 200, 'bounce');
    };

    Hex.prototype.unhovered = function () {
        if (this.painted) {
            this.changeColor('painted');
        } else {
            this.changeColor('unpainted');
        }
        return this.cell.animate({
            transform: "t" + this.x + "," + this.y + "s1"
        }, 500, 'bounce');
    };

    Hex.prototype.attachHandlers = function () {
        this.cell.hover(this.hovered, this.unhovered);
        this.cell.mousedown(this.mousedown);
        this.cell.mouseup(this.mouseup);
        return this.cell.click(this.doClick);
    };
    return Hex;
})();