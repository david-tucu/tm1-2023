//declaracion de una variable:
float a;


void setup() {
  //define el tamaño:
  size(400, 300);
  //asignacion (le da un valor a la variable)
  a=0;
}
void draw() {
  //pinta el fondo.
  //el color lo toma el valor
  //invocacion de una funcion:
  pintaElFondo( a );

  dibujaCirculo( 100, 100);

  //actualiza el valor
  //suma / incremento
  a+=2;
  //actualiza el valor
  //le asigna el modulo (el resto de la division):
  a%=255;
  //257 --> (a=2)
}
