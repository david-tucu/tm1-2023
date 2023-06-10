size(400, 400);

for ( int i=0; i<10; i++ ) {
  float d = map(i, 0, 10, 400, 0);
  float col = map(i, 0, 10, 125, 255);
  colorMode( HSB );
  fill(col, 255, 255);
  ellipse(200, 200, d, d);
}
