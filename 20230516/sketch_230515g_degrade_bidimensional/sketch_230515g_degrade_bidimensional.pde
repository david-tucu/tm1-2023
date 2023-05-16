//ejemplo de ciclo for anidado (dos dimensiones)
//map() para modelar el color

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  //otra manera de lograr lo mismo:
  for ( int a=0; a<10; a++) {
    
    for ( int b=0; b<10; b++) {
      
      fill( map(a,0,9,0,255)  ,  map(b,0,9,255,0) , 0 );
      
      rect(a*40, b*40, 40, 40);
      fill(255, 255, 0);
      text (a+","+b, a*40, b*40, 40, 40 );
    }
  }
}
