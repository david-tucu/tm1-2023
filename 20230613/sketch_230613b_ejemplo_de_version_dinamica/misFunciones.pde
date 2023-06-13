//declaro una funcion que dibuja mi arte optico:
void dibujaMiArteOptico(){
  for ( int i=0 ; i<10 ; i++){
   rotate( radians( ang ) ); //TWO_PI = 360º
   rectMode(CENTER);
   float tam = map(i,0,9,400,0);
   fill( i%2*255);  //0 1 0 1 0 1 0 1 0 1
   rect( 0,0,tam, tam);
 }
}
