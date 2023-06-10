//declaracion de la funcion que realiza el dibujo:

void dibujaPuntosDeFuga( float cantidad_ ) {
  push();
  for ( int i=0; i<cantidad_; i++ ) {

    dibujaModulo();
    rotate( TWO_PI/cantidad_ );
  }
  pop();
}

void dibujaModulo() {
  push();
  //line(0,0,300,0);
  noStroke();
  fill(100);
  triangle(0, 0, 300, -10, 300, 10);
  pop();
}
