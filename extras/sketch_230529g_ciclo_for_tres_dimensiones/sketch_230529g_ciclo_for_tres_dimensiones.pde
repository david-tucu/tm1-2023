int separacion;

int x, y;
void setup () {
  size (400, 400);

  separacion = 1;

  x= 50;
  y= 50;
}

void draw () {
  background (250, 250, 0);
  float mod = width/4;
  for ( int a = 0; a < 4; a++) {
    for ( int b = 0; b < 4; b++) {
      float x = mod/2 + mod*a ;
      float y = mod/2 + mod*b ;
      rectMode(CENTER);
      for ( int c = 0; c < 10; c++ ) {
        float tam = map(c, 0, 10-1, mod, 2 );
        rect(x, y, tam, tam, map(sin(frameCount*.1), -1, 1, 0, mod/2));
      }
    }
  }
  /*

   push();
   for (int i = 0; i < 100; i +=10) {
   filaCuadrados(x, y, separacion);
   y+=100;
   
   if (y > 400) {
   y = 50;
   }
   }
   pop();
   
   if (key == 'p') {
   save("artOptic.jpg");
   }
   */
}

//----------------------------------

void filaCuadrados(int x_, int y_, int separacion_) {

  rectMode(CENTER);
  noFill();

  for (int k = 0; k < 100; k +=10) {
    for (int i = 0; i < 100; i+=10) {
      for (int j = 0; j < 100; j+=5) {
        rect(x_, y_, separacion * j, separacion_ * j );
      }
    }
    x_+=100;
  }
}
