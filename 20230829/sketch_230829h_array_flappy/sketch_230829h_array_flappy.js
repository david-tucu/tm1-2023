//declaramos los arreglos:
let cantObstaculos = 3;
let x=[], y=[], velX=[], velY=[], r=[];
let col=[];
let pisoY;

//variables personaje:
let xP, yP, velYP, velXP, rP;
let vidaP;
function setup() {
  createCanvas(400, 400);
  pisoY = height*0.75;
  inicializarObstaculos();
  inicializarPersonaje();
}


function draw() {
  background(255, 0, 0);
  actualizarObstaculos();
  actualizarPersonaje();
  evaluarColisiones();
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

function evaluarColisiones(){
  for ( let i=0; i<cantObstaculos; i++ ) {
    //i -> 0 1 2 3 
    //esto es solo para dibujar la linea 
    stroke(0,255,0);
    strokeWeight(1);
    line( xP,yP,x[i],y[i]) ;
    
    //calculamos la distancia
    if ( dist( xP,yP,x[i],y[i])<rP+r[i] ){
      //RESTAMOS UN vida:
      vidaP--;
      x[i] = width+random(100,200);
      y[i] = random(r[i],height*.5);
      
      //si ya no tiene vidas
      if ( vidaP <= 0 ){
       //cambiaria el estado a perdio...
       console.log("PERDIOOOO");
      }
    }
  }
}

function mousePressed(){
 saltarPersonaje(); 
}
function keyPressed(){
 if ( keyCode == UP_ARROW ){
   console.log("tecla arriba");
   saltarPersonaje(); 

 }
}
