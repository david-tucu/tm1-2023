void modulo( float x_, float y_ , float col_ ) {
  push();
  translate(x_, y_);
  fill( col_ );
  rect( 0, 0, 30, 30);
  pop();
}
