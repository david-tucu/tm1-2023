void dibujaBotonRectangular(float x, float y, float ancho, float alto, String texto) {
  // Establecer colores para el botón
  color fondo = color(200);
  color borde = color(100);
  color efectoOver = color(0, 200, 0);

  // Dibujar el fondo del botón
  if ( colisionConBotonRectangular(x, y, ancho, alto) ) {
    fill(efectoOver);
  } else {
    fill(fondo);
  }
  stroke(borde);
  rectMode(CENTER);
  rect(x, y, ancho, alto);

  // Dibujar el texto dentro del botón
  fill(0); // Establecer color negro para el texto
  textAlign(CENTER, CENTER); // Alinear el texto al centro del botón
  textSize(16); // Tamaño del texto
  text(texto, x, y ); // Posicionar el texto en el centro del botón
}


boolean colisionConBotonRectangular(float x, float y, float ancho, float alto ) {
  //este boton evalua si el mouse esta sobre el boton
  boolean colisiona;
  if ( mouseX>x-ancho/2 && mouseX<x+ancho/2 &&
    mouseY>y-alto/2 && mouseY<y+alto/2 ) {
    colisiona = true;
  } else {
    colisiona = false;
  }
  return colisiona;
}
