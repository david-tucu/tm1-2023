float ang;

void setup() {
  size(800, 400);
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
}
