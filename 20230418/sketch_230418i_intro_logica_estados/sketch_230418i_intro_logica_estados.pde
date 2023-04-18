int cont;
int pantalla;
void setup() {
  size(640, 480);
  textSize(50);
  pantalla = 1;
}
void draw() {
  background(255);
  fill(0);
  if ( pantalla == 1 ) {
    text("PANTALLA 1", 100, 100);
  }
  if (pantalla == 2 ) {
    text("PANTALLA 2", 100, 120);
  }
  if ( pantalla == 3) {
    text("PANTALLA 3", 100, 140);
  }
  
}

void mousePressed(){
  //pantalla = pantalla+1;
  pantalla++;
  if ( pantalla > 3  ){
    pantalla = 1;
  }
}
