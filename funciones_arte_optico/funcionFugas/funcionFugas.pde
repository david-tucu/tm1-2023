void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  stroke(100);
  strokeWeight(1);
  dibujaFugasDesdeRectangulo(10, 10, 380, 380, mouseX, mouseY, 20);
}

void dibujaFugasDesdeRectangulo(
  float x, float y,
  float ancho, float alto,
  float x_destino, float y_destino,
  float cant) {

  //dibuja lineas desde un rectángulo ancho alto hacia centro x,y:

  //los primeros cuadrados se interpretan como las dimensiones de un rect()
  //los siguientes dos, son las coordenadas destino
  //el septimo parametro es la cantidad de divisiones del lateral

  push();//para dejar todo como cuando arranca

  //cantidad de lineas por laterales:
  for ( float i=0; i<cant; i++ ) {

    //linea desde arriba:
    line(x_destino, y_destino, map(i, -1, cant-1, x, x+ancho), y);
    //linea desde la abajo:
    line(x_destino, y_destino, map(i, 0, cant, x, x+ancho), y+alto);
    //linea desde la izquiera:
    line(x_destino, y_destino, x, map(i, 0, cant, y, y+alto) );
    //linea desde la derecha:
    line(x_destino, y_destino, x+ancho, map(i, -1, cant-1, y, y+alto));
  }

  pop(); //deja la matriz y estilos como estaban
}

void mousePressed() {
  save("captura.png");
}
