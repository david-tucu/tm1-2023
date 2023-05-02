//String estado;
/*
posibles estados:
 "inicio" -> pantalla de inicio
 "pantalla 1" -> muestra pantalla 1
 "pantalla 2" -> muestra pantalla 2
 "pantalla 3" -> muestra pantalla 3
 */

int estado;
/*
posibles estados:
 0 -> pantalla de inicio
 1 -> muestra pantalla 1
 2 -> muestra pantalla 2
 3 -> muestra pantalla 3
 */

void setup() {
  size(640, 480);
  estado = 0;
}
void draw() {
  background(255);
  if ( estado==0 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    text("PANTALLA DE INICIO", 200, 200);
  } else if ( estado==1 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    text("PANTALLA UNO", 200, 200);
  } else if ( estado==2 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    text("PANTALLA DOS", 300, 250);
  } else if ( estado==3 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    text("PANTALLA TRES", 100, 100);
  }
}

void mousePressed() {

  if ( estado==0 ) {
    estado = 1;
  } else if ( estado==1 ) {
    estado = 2;
  } else if ( estado==2 ) {
    estado = 3;
  } else if ( estado==3) {
    estado = 0;
  }

  /*
  //estado 0 1 2 3 0 1 2 3
   //estado = estado + 1;
   estado++;
   if (estado > 3 ) {
   estado = 0;
   }
   */
}
