//declaracion de una funcion propia
//que recibe parametro
//no retorna dato
void pintaElFondo( float miColor ){
  //toma el parametro y lo usa
  //para pintar el color de fondo:
  background(miColor);
}

//otra funcion que dibuja
//recibe dos parametros
// NO retorna valor
void dibujaCirculo( float x, float y){
  push();
  translate(x,y);
  ellipseMode(CENTER);
  fill(255,200,0);
  ellipse(0,0,100,100);
  pop();
}
