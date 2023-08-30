//las funciones del personaje:
function inicializarPersonaje() {
  rP = 30;
  xP = width*0.25;
  yP = pisoY-rP;
  velYP = 0;
  velXP = 0;
  
  vidaP = 3;
}

function actualizarPersonaje() {
  moverPersonaje();
  dibujarPersonaje();
}

function moverPersonaje() {
  //cambiamos la posicion seguna la velocidad
  yP+=velYP;

  //para lograr efecto de gravedad:
  if ( yP<=pisoY-rP ) {
    //"fuerza de gravedad":
    velYP+=0.45;
  } else {
    velYP=0;
    yP=pisoY-rP;
  }
}

function dibujarPersonaje() {
  //
  push();
  translate(xP, yP);
  fill(0, 255, 0);
  ellipse(0, 0, rP*2, rP*2);
  pop();
}

function saltarPersonaje() {
  //fuerza con la que salto:
  if ( yP >= pisoY-rP-5 ) {
    velYP = -10;
  }
}
