void mousePressed() {
  if ( estado == 0 ) {
    if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("CLICK en boton de la derecha");
    }


    if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("CLICK en boton de la izquierda");
    }
  }
}
