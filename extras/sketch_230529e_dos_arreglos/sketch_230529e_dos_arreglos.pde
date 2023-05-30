float[] x;
float[] y;
int cant;

void setup() {
  size(400, 400);

  cant = 5;
  x = new float[cant];
  y = new float[cant];

 
  for ( int i=0; i<cant; i++ ) {
    x[i] = random(0, width); 
    y[i] = random(0, height);
  }
  println("el arreglo x:");
  println(x);
  println();
  println("el arreglo y:");
  println(y);
}

void draw() {
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
