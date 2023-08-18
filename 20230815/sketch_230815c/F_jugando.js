//declaracion de una funcion:
function jugando(){
 
  //mostrar tiempo restante:
  fill(0,255,0);
  rect(0,0, map(millis()-tiempoInicioJugar,0,15000,width,0) ,5);
  
  //dibuja la zona de "ganar"
  noFill();
  ellipse(width/2,height/2,50*2,50*2);
  
  //muestro un mensaje durante 2 segundo:
  if ( millis()-tiempoInicioJugar < 2000 ) {
      textoCentrado("Suerte!");
  }
  
  
  
  //evaluo si pierde:
  if ( millis()-tiempoInicioJugar > 15000 ) {
      //flujo de estado 1 -> 3
      estado=3;
      
  }
  
  
}
