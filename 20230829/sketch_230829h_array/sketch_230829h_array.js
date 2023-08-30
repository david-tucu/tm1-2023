//declaramos los arreglos:
let cantObstaculos = 3;
let x=[], y=[], velX=[], velY=[], r=[];
let col=[];
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
  for ( let i=0; i<cantObstaculos; i++ ) {
    //i -> 0 , 1 , 2 , 3
    r[i] = 20;
    x[i] = width+i*80;
    y[i] = random(0, height*0.5);
    velX[i] = -2;
    velY[i] = random(-2,2);
    col[i] = color( random(100,255), random(0,125),random(255));
  }
}

function actualizarObstaculos() {
  moverObstaculos();
  dibujarObstaculos();
}

function moverObstaculos() {
  //cambia los valores de ubicacion:
  for ( let i=0; i<cantObstaculos; i++ ) {
    x[i]+=velX[i];
    y[i]+=velY[i];

    //evaluar rebote o limites:
    if ( y[i]>=pisoY-r[i] || y[i] <= r[i] ) {
      velY[i] = -velY[i];
    }
    //limito por si quedé fuera:
    y[i] = constrain(y[i], r[i], pisoY-r[i]);
    
    if ( x[i] <= -r[i] ) {
      //lo pasamos a la derecha de la ventana:
      x[i] = width+r[i];
      velY[i] = random(-2,2);
    }
  }
}

function dibujarObstaculos() {
  //dibujar los obstaculos:
  for ( let i=0; i<cantObstaculos; i++ ) {
    push();
    translate(x[i], y[i]);
    fill(col[i]);
    ellipse( 0, 0, r[i]*2, r[i]*2);
    pop();
  }
}
