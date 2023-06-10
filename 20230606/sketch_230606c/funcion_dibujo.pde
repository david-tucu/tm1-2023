//declaracion de la funcion que realiza el dibujo:

void dibujaPuntosDeFuga( float cantidad_ ) {
  push();
  for ( int i=0; i<cantidad_; i++ ) {

    dibujaModulo( i );
    rotate( calculaModulo( TWO_PI, cantidad_ ) );
  }
  pop();
}

void dibujaModulo( int indice_ ) {
  push();
  //line(0,0,300,0);
  noStroke();
  
  fill(255*(indice_%2));
  triangle(0, 0, 300, -10, 300, 10);
  pop();
}
