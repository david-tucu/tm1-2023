//decalracion de una variable:
int a;
//otro tipo numerico float
//NOMBRE NO VALIDOS:
/*
año
 ahí
 máximo
 altura total
 x    es distinto a   X
 posX                 posx
 
 nombres comunes:
 
 altura
 posX
 altura_maxima
 */


void setup() {
  size(400, 400);

  //asignacion:
  a = 400; //60*60; //3600
}
void draw() {
  background(255, 0, 0);
  textSize(50);
  fill(0, 0, 100);
  ellipse(200, 200, a, a);
  fill(255);
  textAlign(CENTER, CENTER);

  //invocamos la variable:
  text("Seguimos en " + a, a, 200);

  a = a-1;
}

void mousePressed() {
  a = 100;
}
