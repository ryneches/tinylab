$fn = 50; // smoothness 
sh = 11;
bh = 3;

difference() {
  translate( [0,0,0] ) {
      cylinder( r=68/2, h=2 ); 
  }
	// m6 threaded hole for HPLC fitting
	translate( [60/3,0,-0.01] ) cylinder( r=3,h=10 );
	// holes for pistons
	translate( [0, 8,-0.01] ) cylinder( r=1.5,h=10 );
	translate( [0,-8,-0.01] ) cylinder( r=1.5,h=10 );	
}
