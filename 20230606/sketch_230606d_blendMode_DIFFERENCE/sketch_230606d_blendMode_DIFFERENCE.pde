float variaCantidad = 10;
float incremento = 0.1;

void setup() {
  size(800, 400);
}

void draw() {
  dibujaFondo(0);
  push();
  translate(400+200, 200);
  //invocación:
  dibujaPuntosDeFuga( variaCantidad );
  pop();
  circle( mouseX, mouseY, 20);

  //cambiar los valores de la variable para el siguienmte fotogram:
  variaCantidad+=incremento;
  if (variaCantidad>50 || variaCantidad<10) {
    incremento=-incremento;
  }

  push();
  blendMode(DIFFERENCE);
  rectMode(CENTER);
  fill(255);
  rect(mouseX, mouseY, 200, 200,100);
  pop();
}
