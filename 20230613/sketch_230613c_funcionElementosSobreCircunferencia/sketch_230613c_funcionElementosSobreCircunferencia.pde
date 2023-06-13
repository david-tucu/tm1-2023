//mi nombre
//mi trabajo
//url al video: (oculto, no privado!!!)



void setup () {
  size(800, 400);
  
}
void draw () {
  background(255);
  translate(600,200);
  rotate( frameCount*.001);
  dibujaCircMadre( 15 , dist(600,200,mouseX,mouseY) );
}
void mousePressed() {
  
}
