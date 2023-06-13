void setup(){
  size(800,400);
}
void draw(){
 background(255);
 translate(600,200);
 rotate( radians(45) ); //TWO_PI = 360º
 for ( int i=0 ; i<10 ; i++){
   rectMode(CENTER);
   float tam = map(i,0,9,400,0);
   fill( i%2*255);  //0 1 0 1 0 1 0 1 0 1
   rect( 0,0,tam, tam);
 }
}
