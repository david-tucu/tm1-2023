float ang;
color colOrigen;
color colDestino;

void setup() {
  size(800, 400);
  ang = 0;
  asignaNuevosColoresAleatorios();
}
void draw() {
  background(255);
  translate(600, 200);
  //invoco a la funcion declarada por mi:
  dibujaMiArteOptico();
  if ( mouseX>400 ) {
    ang+=.1;
  }

  if ( frameCount%60==0 ) {
    asignaNuevosColoresAleatorios();
  }
  //mostrar la imagen original:
}

void mousePressed() {
  ang = 0;
  asignaNuevosColoresAleatorios();
}
