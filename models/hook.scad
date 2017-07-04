difference(){
    translate([3,30,-10]){
        cube([64,10,40]);
    }
    
    // switch lever opening
    translate([25,10,-15]){
        cube([20,40,15]);
    }
}

// switch lever
translate([26,10,-10]){
    //cube([18,40,8]);
}
    
difference(){

	cube([70,40,20]);
    
	// shape inside of hook
	translate([35,20,-1]){
		difference(){
            translate([0,0,20]){
                sphere(r=34, $fn=100);
            }
			translate([-33,10,-1]){
				cube([66,32,27]);
			}
		}
	}
    
	// shape outside of hook
	translate([35,20,-1]){
		difference(){
			difference(){
				cylinder(r=42,h=25, $fn=100);
				cylinder(r1=35, r2=38,h=25, $fn=100);
			}

			translate([-32,10,-1]){
				cube([64,32,27]);
			}
		}
	}
    
    // version
    translate([20,39,5]){
        rotate([90,0,180]){
            linear_extrude(height=5){
                text("V8");
            }
        }
    }
}