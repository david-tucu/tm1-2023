//declaracion de la funcion que realiza el dibujo:

void dibujaPuntosDeFuga(){
  push();
  strokeWeight(5);
  for( int i=0 ; i<20 ; i++ ) {
    
    dibujaModulo();
    rotate( TWO_PI/20 );
  }
  pop();
}

void dibujaModulo(){
  line(0,0,300,0);
}
