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
  
  for ( int i=0 ; i<12 ; i++ ){
   fill(255*(indice_%2));
   
    circle(i*i*2, 0, i*i/2);
  }
  pop();
  
}
