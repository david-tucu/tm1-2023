//declaracion de la funcion:

//function dibujaCarita() {

void dibujaCarita( float x_ , float y_ ) {
  //dibuja una carita en las coordenadas x_ ,  y_
  
  
  push(); //recordamos la transformacion de la matriz
  //a este punto
  translate(  x_ ,  y_ ); //mueve el origen 200 en x 150 en y
  rotate( radians(ang) ); //expresar en radianes
  fill(255, 255, 0);
  rect(0-50, 0-50, 100, 100); //dibujamos relativo a 0,0

  push();
  translate(0, -50);
  rotate(frameCount*0.1);
  fill(0);
  ellipse(0, 0, 10, 30);
  pop();

  push();
  translate(0, 50);
  rotate(frameCount*0.1);
  fill(0);
  ellipse(0, 0, 10, 30);
  pop();

  pop(); //volvemos al punto que recordamos
}
