
void setup() {
  size(800, 400);
}

void draw() {
  dibujaFondo(100);
  push();
  translate(400+200, 200);
  //invocación:
  dibujaPuntosDeFuga( mouseX/10 );
  pop();
  circle( mouseX, mouseY, 20);
}
