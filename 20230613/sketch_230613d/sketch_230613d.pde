
void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  
  dibujaGrilla( 400 , 0 , 400 , 400 , 4, 8 );
  
  dibujaGrilla( mouseX , mouseY , 150 , 150 , 4, 8 );
  
}
