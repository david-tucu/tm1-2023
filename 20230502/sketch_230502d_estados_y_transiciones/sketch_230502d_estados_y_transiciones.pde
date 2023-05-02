

int estado;
/*
posibles estados:
 0 -> pantalla de inicio
 1 -> muestra pantalla 1
 2 -> muestra pantalla 2
 3 -> muestra pantalla 3
 */


float x;



void setup() {
  size(640, 480);
  estado = 0;
  x = 0;
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
    fill(x*255/640); //regla de tres
    text("PANTALLA UNO", x, 200);

    //aumentamos x en cada fotograma:
    x+=4;
    //x = x+2;
    if ( x>width+100 ) {
      //flujo de estado: 1 a 2:
      estado = 2;
      x = 700;
    }
  } else if ( estado==2 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    text("PANTALLA DOS", x, 250);

    //comportamiento de la variable:
    x-=4;
    if (x<-100) {
      //flujo de estado de 2 a 3:
      estado = 3;
      x = 0;
    }
  } else if ( estado==3 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    text("PANTALLA TRES", 100, x);

    x+=3;
    //evaluo posible cambio de estado:
    if ( x> height+50) {
      //flujo de estado:
      estado = 0;
    }
  }
}

void mousePressed() {

  if ( estado==0 ) {
    //flujo de estado de 0 a 1:
    estado = 1;
    x=-300;
  } else if ( estado==1 ) {
    estado = 2;
  } else if ( estado==2 ) {
    estado = 3;
  } else if ( estado==3) {
    estado = 0;
  }
}
