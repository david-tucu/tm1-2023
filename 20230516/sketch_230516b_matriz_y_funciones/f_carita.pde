//declaracion de la funcion:

//function dibujaCarita() {

void dibujaCarita() {
  //dibuja una carita en las coordenadas del mouse
  
  
  push(); //recordamos la transformacion de la matriz
  //a este punto
  translate(mouseX, mouseY); //mueve el origen 200 en x 150 en y
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
