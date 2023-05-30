float[] x;
float[] y;
int cant;

void setup() {
  size(400, 400);

  cant = 5;
  x = new float[cant];
  y = new float[cant];

  valoresIniciales();
  

}

void draw() {
  if ( frameCount%600 == 0) {
    valoresIniciales();
  }
  background(255);
  //mostrar un circulo para cada casillero de x,y

  //for...
  //i 0 1 2 3 ... cant-1

  //muestre una ellipse
  // x[i] , y[i] 
  /// end for

  for (int i=0; i<cant; i++) {
    ellipse (x[i], y[i], 40, 40);
  }
}

void mousePressed(){
  valoresIniciales();
}

//declaracion de una funcion:
void valoresIniciales(){
  for ( int i=0; i<cant; i++ ) {
    x[i] = random(0, width); 
    y[i] = random(0, height);
  }
}
