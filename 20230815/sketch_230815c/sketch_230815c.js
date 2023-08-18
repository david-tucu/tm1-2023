let estado=0;

let tiempoInicioJugar;

function setup() {
  createCanvas(400, 400);
}


function draw() {
  background(255, 220, 200);
  if ( estado==0 ) {
    pantallaInicio();
  } else if ( estado == 1 ) {
    jugando();
  } else if ( estado == 2 ) {
    pantallaGano();
  } else if ( estado == 3 ) {
    pantallaPerdio();
  }
}

function mousePressed() {
  if ( estado==0 ) {
    //flujo de estado 0->1
    estado=1;
    tiempoInicioJugar = millis();
  } else if ( estado == 1 ) {
    //evaluo clicks durante el juego
    if ( dist( width/2, height/2, mouseX, mouseY)<50 ) {
      estado=2;
    }
  } else if ( estado == 2 ) {
    //flujo de estado 2->0
    estado = 0;
  } else if ( estado == 3 ) {
    //flujo de estado 3->0
    estado = 0;
  }
}
