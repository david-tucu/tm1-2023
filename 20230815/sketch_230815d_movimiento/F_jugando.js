//declaracion de una funcion:
function jugando(){
 
  //mostrar tiempo restante:
  fill(0,255,0);
  rect(0,0, map(millis()-tiempoInicioJugar,0,15000,width,0) ,5);
  
  moverObjetivo();
  
  //dibuja la zona de "ganar"
  noFill();
  ellipse(x,y,tam,tam);
  
  
  
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


function moverObjetivo(){
  //esta funcion mueve las variables de ubicacion
  //y rebota contra los bordes:
  //usa coordenadas polares:
  let despX,despY;
  despX = cos(dir)*vel;
  despY = sin(dir)*vel;
  x+=despX;
  y+=despY;
  if ( x+tam/2 > width || x-tam/2 < 0  ){
    despX = -despX;
  }
  if ( y+tam/2 > height || y-tam/2 < 0 ){
    despY = -despY;
  }
  //encuentro la nueva direccion si hubo rebote:
  dir = atan2(despY,despX);
}
