let juego;
var DEBUG = true;

function setup() {
  createCanvas(400, 400);
  juego = new Juego();
}


function draw() {
  background(255);
  juego.actualizar();
}

function mousePressed(){
 juego.mousePressed(); 
}
