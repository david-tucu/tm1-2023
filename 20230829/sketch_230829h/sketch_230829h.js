let x, y, velX, velY, r;
let pisoY;
function setup() {
  createCanvas(400, 400);
  pisoY = height*0.75;
  inicializarObstaculos();
}


function draw() {
  background(255, 0, 0);
  actualizarObstaculos();
  //dibujamos piso:
  strokeWeight(4);
  line(0, pisoY, width, pisoY);
}


function inicializarObstaculos() {
  r = 20;
  x = width+r;
  y = random(r, height*.25);
  velX = -2;
  velY = 2;
}

function actualizarObstaculos() {
  moverObstaculos();
  dibujarObstaculos();
}

function moverObstaculos() {
  //cambia los valores de ubicacion:
  /*
   x = x+velX;
   y = y+velY;
   */
  x+=velX;
  y+=velY;
  //evaluar rebote o limites:
  if ( y>=pisoY-r ) {
    y = pisoY-r;
    velY = -velY;
  }
  if ( y <= r ) {
    velY = -velY;
  }
  if ( x <= -r ) {
   //lo pasamos a la derecha de la ventana:
   x = width+r;
  }
}

function dibujarObstaculos() {
  //dibujar los obstaculos:
  push();
  translate(x, y);
  fill(0, 0, 255);
  ellipse( 0, 0, r*2, r*2);
  pop();
}
