//declaracion de un arreglo
String[] nombres;


void setup() {
  size(400, 300);
  //construir las casillas:
  nombres = new String[4];

  //asignacion en una casilla de un arreglo:
  nombres[0] = "Fer";
  nombres[1] = "Ale";
  nombres[2] = "David";
  nombres[3] = "";

  textSize(40);
}
void draw() {
  background(255);
  fill(0);
  text( nombres[0], mouseX, mouseY);
}
