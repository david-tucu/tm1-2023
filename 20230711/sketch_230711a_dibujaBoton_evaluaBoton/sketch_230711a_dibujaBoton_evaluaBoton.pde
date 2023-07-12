void setup() {
  size(600, 600);
}
void draw() {
  background(200);
  dibujaBotonRectangular( 100, 150, 120, 50, "CREDITOS" );
  dibujaBotonRectangular( 100, 250, 120, 50, "INICIAR"  );
}

void mousePressed() {
  if ( colisionConBotonRectangular(100, 150, 120, 50) ) {
    //pasamos  a creditos:
    println("paso a creditos");
  }
  if ( colisionConBotonRectangular(100, 250, 120, 50) ) {
    //pasamos  a iniciar:
    println("paso a iniciar");
  }
}
