float variaCantidad;
float incremento = 0.1;

void setup() {
  size(800, 400);
}

void draw() {
  dibujaFondo(100);
  push();
  translate(400+200, 200);
  //invocación:
  dibujaPuntosDeFuga( variaCantidad );
  pop();
  circle( mouseX, mouseY, 20);

  //cambiar los valores de la variable para el siguienmte fotogram:
  variaCantidad+=incremento;
  if (variaCantidad>20 || variaCantidad<0) {
    incremento=-incremento;
  }
}
