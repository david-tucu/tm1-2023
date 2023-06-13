//declaro una funcion que dibuja mi arte optico:
void dibujaMiArteOptico(){
  for ( int i=0 ; i<10 ; i++){
   rotate( radians( ang ) ); //TWO_PI = 360º
   rectMode(CENTER);
   float tam = map(i,0,9,400,0);
   if ( i%2==0 ){
    
     
     fill(  lerpColor(colOrigen, colDestino, map(i,0,9,0,1) ) );     
   } else {
     fill(255);
   }
   
   rect( 0,0,tam, tam);
 }
}
