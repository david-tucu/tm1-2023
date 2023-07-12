void mousePressed() {
  if ( estado == 0 ) {
    if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 0 -> 1");
      estado = 1;
    }
  } else if ( estado == 1 ) {
    if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 1 -> 2");
      estado = 2;
    }
    if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("CLICK en boton de la izquierda (flujo de 1 -> 0");
      estado = 0;
    }
  } else if ( estado==2) {
    if (colisionConBotonRectangular(width/4, height/3, 120, 80)) {
      //boton de la izquierda
      println("DORMIR -- flujo de 2 a ???");
    }
    if (colisionConBotonRectangular(width/4*3, height/3, 120, 80)) {
      //boton de la derecha
      println("CAMINAR -- flujo de 2 a ???");
    }
  }
}
