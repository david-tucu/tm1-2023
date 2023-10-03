//declarando un objeto de la clase Juego:
let juego;

function setup() {
  createCanvas(400,400);
  juego = new Juego();
  //juego es un objeto de la clase Juego
  //o una instancia de la clase Juego
}


function draw() {
 juego.draw();
}

function mousePressed(){
 juego.mousePressed(); 
}

function keyPressed(){
 juego.keyPressed(); 
}
