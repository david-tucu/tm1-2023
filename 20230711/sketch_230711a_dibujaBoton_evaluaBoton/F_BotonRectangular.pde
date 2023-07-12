void dibujaBotonRectangular(float x, float y, float ancho, float alto, String texto ) {
  push();

  // Establecer colores para el botón
  color fondo = color(200);
  color borde = color(100);
  color efectoOver = color(255, 200, 0);

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

  pop();
}

/*
boolean colisionConBotonRectangular(float x, float y, float ancho, float alto ) {
 //este boton evalua si el mouse esta sobre el boton
 
 boolean colisiona;
 
 boolean aLaDerechaDelBordeIzquierdo;
 boolean aLaIzquierdaDelBordeDerecho;
 boolean abajoDelBordeDeArriba;
 boolean arribaDelBordeDeAbajo;
 
 aLaDerechaDelBordeIzquierdo = mouseX > x-ancho/2;
 aLaIzquierdaDelBordeDerecho = mouseX < x+ancho/2;
 abajoDelBordeDeArriba = mouseY > y-alto/2;
 arribaDelBordeDeAbajo = mouseY < y+alto/2;
 
 if ( aLaDerechaDelBordeIzquierdo
 && aLaIzquierdaDelBordeDerecho
 && abajoDelBordeDeArriba
 && arribaDelBordeDeAbajo ) {
 //se cumplen las cuatro:
 //el mouse Esta dentro:
 colisiona = true;
 } else {
 colisiona = false;
 }
 
 return colisiona;
 
 }
 */


//manera simplificada de lo mismo:
boolean colisionConBotonRectangular(float x, float y, float ancho, float alto ) {
  return ( mouseX>x-ancho/2 && mouseX<x+ancho/2 && mouseY>y-alto/2 && mouseY<y+alto/2 );
}
