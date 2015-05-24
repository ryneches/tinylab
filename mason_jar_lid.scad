include <threads.scad> 

$fn = 60;   
sh = 60;    // stand-off hight
bh = 1.5;   // screwhead pocket depth
pr = 6.5/2; // piston radius
pd = 19/2;  // piston separation radius

difference() {
	union() {
		cylinder( r=60/2, h=1 );
		cylinder( r=60/2-4.5, h=5 );
		for ( i = [1,-1] ) {
			for ( j = [1,-1] ) {
				translate( [i*31/2,j*31/2,0] ) {
						cylinder( r=3.5, h=sh );
				}
			}
		}
	}
	union() {
		for ( i = [1,-1] ) {
			for ( j = [1,-1] ) {
				translate( [i*31/2,j*31/2,-0.01] ) {
						cylinder( r=3, h=bh );
						translate( [0,0,0.02] ) cylinder( r=1.7, h=sh );
				}
			}
		}
	}
	// holes for pistons
	translate( [0, pd,-0.01] ) cylinder( r=pr, h=10 );
	translate( [0,-pd,-0.01] ) cylinder( r=pr, h=10 );
	// m6 threaded hole for HPLC fitting
	translate( [60/3,0,-2] ) metric_thread(6, 1, 10);
}
