float ang;
color colOrigen;
color colDestino;

void setup() {
  size(800, 400);
  ang = 0;
  //guardo en una variable un color:
  colOrigen = color(255, 0, 0);
  //guardo en otra variable otro color:
  colDestino = color(0, 255, 255);
}
void draw() {
  background(255);
  translate(600, 200);
  //invoco a la funcion declarada por mi:
  dibujaMiArteOptico();
  if ( mouseX>400 ) {
    ang+=.1;
  }

  //mostrar la imagen original:
}

void mousePressed() {
  ang = 0;
  colOrigen = color(random(255), random(255), random(255));
  colDestino = color(0, 255, 255);
}
