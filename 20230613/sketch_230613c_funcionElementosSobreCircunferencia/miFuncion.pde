
void dibujaCircMadre( float cant_, float radio_ ) {
  //esta funcion espera un valor para
  //cantidad de circulos y dibuja alrededor
  //de la circunferencia segun el radio
  push();
  float paso = 360 / cant_;
  for (int i=0; i<cant_; i++ ) {
    rotate(radians(paso));
    float tam = PI*radio_*2/cant_;
    ellipse(radio_, 0, tam, tam);
  }
  pop();
}


//declarar una funcion que retorna un valor
//en este caso retorna un tipo de dato color:
color dameUnColorAleatorio() {
  return color( random(255), random(255), random(255) );
}
