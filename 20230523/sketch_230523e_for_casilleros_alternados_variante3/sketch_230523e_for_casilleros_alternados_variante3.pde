int cant; //variable para la cantidad de modulos
float mod; //variable para guardar la medida de cada modulo
void setup() {

  //tamaño de la ventana
  size(400, 400);
  cant = 40; //asigno un valor a la variable cantidad
  mod = (float)width/cant; //calculo el tamaño y lo guardo en la varible (divido el ancho de la ventana en la cantidad)
}
void draw() {
  background(210);
  for ( int a=0; a<=cant; a++ ) { //for para recorrer una dimension
    for ( int b=0; b<=cant; b++ ) { //for para recorrer otra dimension
      if ( (a+b)%2 == 0 ) { //si la suma de los indices es par
        fill(255);
      } else {
        fill( 0);
      }
      //dibuja el rectangulo
      //la ubicacion de cada cuadrado será el cálculo correspondiente
      //al indice de cada dimension (a y b)
      //el calculo es el índice por el tamaño de del modulo.

      push();
      translate(a*mod, b*mod);
      //la rotacion será el angulo hacia la coordenda del mouse:
      float ang = atan2(mouseY-b*mod, mouseX-a*mod);
      ang+= sin(frameCount*.05)*0.25;
      rotate(ang);
      noStroke();
      rect(0, 0, -mod*3, mod/3);

      pop();
    }
  }
}
