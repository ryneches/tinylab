include <threads.scad> 

$fn = 50;
sh = 50;
bh = 3;

difference() {
	union() {
		for ( i = [1,-1] ) {
			for ( j = [1,-1] ) {
				cylinder( r=60/2, h=5 );
				translate( [i*31/2,j*31/2,0] ) {
						cylinder( r=4.0, h=sh ); 
				}
			}
		}
	}
	union() {
		for ( i = [1,-1] ) {
			for ( j = [1,-1] ) {
				translate( [i*31/2,j*31/2,-0.01] ) {
						cylinder( r=4, h=bh );
						translate( [0,0,0.02] ) cylinder( r=1.7, h=sh );
				}
			}
		}
	}
	// holes for pistons
	translate( [0, 8,-0.01] ) cylinder( r=1.5,h=10 );
	translate( [0,-8,-0.01] ) cylinder( r=1.5,h=10 );
	// m6 threaded hole for HPLC fitting
	//translate( [60/3,0,-0.01] ) cylinder( r=3,h=10 );
	translate( [60/3,0,-5] ) metric_thread(6, 1, 10);
}
