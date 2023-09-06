let img1, img2;
let x, y, velC, velY, tam;

function setup() {
  createCanvas(400, 400);
  //carga en variables:
  img1 = loadImage("data/imagen1.png");
  img2 = loadImage("data/imagen2.png");


  //pelotita:
  x = width/2;
  y = height/2;
  tam = 60;
  velX = 1;
  velY = 4;
}


function draw() {
  let xFondo = constrain(map(mouseX,0,width,0,-50),-50,0);
  let yFondo = constrain(map(mouseY,0,height,0,-30),-30,0);
  
  image(img2, xFondo, yFondo, width+50, height+30);

  //dibujarPelotita:
  dibujarPelotita();
  //mover la pelotita:
  moverPelotita();
}



function dibujarPelotita() {
  push();
  translate(x, y);
  //entcuentra el angulo segun la direccion:
  let angulo = atan2(velY,velX);
  rotate(angulo);
  
  imageMode(CENTER);
  image(img1, 0,0, tam, tam);
  noFill();
  stroke(0,255,0);
  ellipse(0, 0, tam, tam);
  pop();
}

function moverPelotita() {
  x+=velX;
  y+=velY;

  //rebota:
  if ( x>width-tam/2 || x < tam/2 ) {
    velX = -velX*random(.5, 1.5);
  }
  if ( y>height-tam/2 || y < tam/2 ) {
    velY = -velY;
  }
  x = constrain(x, tam/2, width-tam/2);
  y = constrain(y, tam/2, height-tam/2);
}
