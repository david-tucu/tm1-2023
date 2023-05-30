float[] x;
float[] y;
float[] tam;
int cant;
int apuntador;

void setup() {
  size(400, 400);

  cant = 50;
  x = new float[cant];
  y = new float[cant];
  tam = new float[cant];

  valoresIniciales();
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
    fill( map( i, 0, cant-1, 0, 255) );
    ellipse (x[i], y[i], tam[i], tam[i]);
    if ( i>0 ) {
      line( x[i], y[i], x[i-1], y[i-1] );
    }

    x[i]+= random(-5, 5);
    y[i]+= random(-5, 5);
  }

  if ( mousePressed ) {
    x[apuntador] = mouseX;
    y[apuntador] = mouseY;

    apuntador++;
    if ( apuntador>=cant) {
      apuntador = 0;
    }
  }
  
}

void keyPressed() {
  valoresIniciales();
}

//declaracion de una funcion:
void valoresIniciales() {
  for ( int i=0; i<cant; i++ ) {
    tam[i] = random(20, 50);
    x[i] = random(0, width); 
    y[i] = random(0, height);
  }
}
