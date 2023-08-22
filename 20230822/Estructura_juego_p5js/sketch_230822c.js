var estado = 0;

//variables del enemigo:
var x_enemigo, y_enemigo, r_enemigo, vel_enemigo;

//variables del personaje:
var x_p, y_p, r_p, vel_p;

//variables contadoras:
var junte, caidas;

//
function setup() {
  createCanvas(600, 600);
}


function draw() {
  background(255, 0, 0);
  if ( estado==0 ) {
    //inicio
    pantallaInicio();
  } else  if ( estado==1 ) {
    //jugando
    pantallaJugando();
  } else  if ( estado==2 ) {
    //perdio
    pantallaPerdio();
  } else  if ( estado==3 ) {
    //gano
    pantallaGano();
  } else if ( estado==4 ) {
    //creditos
    pantallaCreditos();
  }
}

function mousePressed() {
  if ( estado==0 ) {
    //inicio
    estado = 1;
    iniciarJuego();
  } else  if ( estado==1 ) {
    //jugando
  } else  if ( estado==2 ) {
    //perdio
    estado =0;
  } else  if ( estado==3 ) {
    //gano
    estado =0;
  } else if ( estado==4 ) {
    //creditos
    estado =0;
  }
}

function keyPressed() {
  if ( estado==1 ) {
    //jugando
    if ( keyCode === LEFT_ARROW ) {
      vel_p = -2;
    }
    if ( keyCode === RIGHT_ARROW ) {
      vel_p = 2;
    }
  }
}
function keyReleased() {
  if ( estado==1 ) {
    vel_p = 0;
  }
}
