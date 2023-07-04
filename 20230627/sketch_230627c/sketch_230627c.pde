//declaracion de una variable:
float a;


void setup() {
  //define el tamaño:
  size(400, 300);
  //asignacion (le da un valor a la variable)
  a=0;
  
  println( promediaTres(8,9,5) ); 
  
}
void draw() {
  //pinta el fondo.
  //el color lo toma el valor
  //invocacion de una funcion:
  pintaElFondo( a );

  dibujaCirculo( 100, 100);
  
  stroke(0);
  strokeWeight(4);
  point(280,150);
  point(120,200);
  point(mouseX,mouseY);
  
  stroke(0,255,0);
  point( promediaTres(280,120,mouseX) , 
                    promediaTres(150,200,mouseY));
   
   
  //actualiza el valor
  //suma / incremento
  a+=2;
  //actualiza el valor
  //le asigna el modulo (el resto de la division):
  a%=255;
  //257 --> (a=2)
}
