size(400, 400);

for ( int i=0; i<10; i++ ) {
  float d = map(i, 0, 10, 400, 0);
  float col = map(i, 0, 10, 125, 255);
  colorMode( HSB );
  if ( i%2==0) fill(0); else fill(255);
//  fill(col, 255, 255);
  ellipse(200, 200, d, d);
}
blendMode(DIFFERENCE);
fill(255);
rect(40,40,100,300);
