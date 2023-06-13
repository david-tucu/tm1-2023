void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  stroke(100);
  strokeWeight(1);
  dibujaRectangulosEnFuga(0, 0, 400, 400, mouseX, mouseY, 20);
}

void dibujaRectangulosEnFuga(
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

    float anchoRect = map( i, 0, cant, ancho, 0);
    float altoRect = map( i, 0, cant, alto, 0);
    float xRect = map( i, 0, cant, x, x_destino );
    float yRect = map( i, 0, cant, y, y_destino );
    rectMode(CORNER);
    rect(xRect, yRect, anchoRect, altoRect);
  }

  pop(); //deja la matriz y estilos como estaban
}

void mousePressed() {
  save("captura.png");
}
