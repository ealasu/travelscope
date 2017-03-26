use <../MCAD/shapes.scad>;

// front
translate([0,0,-0.75/2]){
    difference() {
        octagon(12, 0.75);
        cylinder(h=1,r=9/2,center=true);
    }
}

length = 36;

translate([-7,0,-1.5]){
    // beam
    translate([0,-0.5,0]){
        cube([1,1,length]);
    }
}

module brace(){
    translate([0,0,-1.5]){
        // outer thickener
        translate([1,-2,0]){
            cube([1.5,4,0.75]);
        }
        // inner thickener
        translate([1,-2,1.5]){
            cube([1.5,4,0.75]);
        }
        // left brace
        translate([0.25,0.5,0]){
            cube([0.75,1.5,2.25]);
        }
        // right brace
        translate([0.25,-2,0]){
            cube([0.75,1.5,2.25]);
        }
    }
}

translate([-7,0,0]){
    brace();
}


// mirror cell
translate([0,0,length]){
    translate([0,0,-2.75]){
        octagon(12,0.75);
    }
    translate([-7,0,-2.25]){
        brace();
    }
    translate([0,0,-3.75]){
        cylinder(h=0.75,r=8/2,center=true);
    }
    color("white"){
        translate([0,0,-4.5-0.125]){
            cylinder(h=0.75,r=8/2,center=true);
        }
    }
}
