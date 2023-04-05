/*
ejemplo de dibujo simple
*/
void setup(){
  size(800,400);
}
void draw(){
  background(255,0,0);
  strokeWeight(10);
  stroke(255,255,0);
  line( 0, 0, 800, 400 );
  line( 0,400,800,0);
  
}
