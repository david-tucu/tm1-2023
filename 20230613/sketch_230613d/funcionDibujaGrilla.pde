
void dibujaGrilla(float x_ , float y_, float ancho_ , float alto_ , int cantX_ , int cantY_){
  //funcion que dibuja una....
  push();
  translate(x_,y_);
  float modX = ancho_/cantX_;
  float modY = alto_/cantY_;
  
  for ( int i=0 ; i<cantX_ ; i++){
    for ( int j=0 ; j<cantY_ ; j++){
      //otros criterios de color de cada rectangulo, etc...
     noFill();
     rect( i*modX , j*modY , modX, modY );  
    }
  }
  pop();
}
