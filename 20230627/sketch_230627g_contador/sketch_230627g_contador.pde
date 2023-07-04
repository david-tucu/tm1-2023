//declaracion de un arreglo
String[] nombres;
int apuntador;

void setup() {
  size(400, 300);
  //construir las casillas:
  nombres = new String[4];

  //asignacion en una casilla de un arreglo:
  nombres[0] = "Fer";
  nombres[1] = "Ale";
  nombres[2] = "David";
  nombres[3] = "";

  apuntador = 0;
  
  textSize(40);
}
void draw() {
  background(255);
  fill(0);
  text( apuntador , 20,40);
  text( nombres[apuntador], mouseX, mouseY);
}

void mousePressed(){
 apuntador++; 
 apuntador%=4;
}
