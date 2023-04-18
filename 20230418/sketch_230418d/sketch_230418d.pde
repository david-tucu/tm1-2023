//declara una variable:
int numFoto;
//tipo de dato
//nombre
//ambito (global)


void setup() {
  size(400, 400);
  //asignamos un valor:
  numFoto = 400/2;
}

void draw() {
  background(255);
  fill(0);
  textSize(100);
  //invocamos la variable:
  text( numFoto, 200, 200);
}



void mousePressed(){
  //incremento:
  numFoto = numFoto+1;
  
}

void mouseReleased(){
  
}
