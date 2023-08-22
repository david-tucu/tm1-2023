function pantallaJugando() {
  background( 0, 0, 200);

  //comportamiento de las variables del enemigo:
  y_enemigo += vel_enemigo;
  if ( y_enemigo > width+r_enemigo ) {
    y_enemigo = -r_enemigo-random(50, 100);
    x_enemigo = random( r_enemigo, width-r_enemigo);
    
    //ademas agrego uno a la cuenta de caidas:
    caidas++;
    if (  caidas>=3 ){
     //perdi:
     estado = 2;
    }
  }

  //comportamiento del personaje:
  x_p+=vel_p;
  //funcion simplificada para limitar:
  x_p = constrain( x_p, 0+r_p, width-r_p);



  //dibujo del enemigo:
  push();
  fill(180);
  ellipseMode(CENTER);
  ellipse(x_enemigo, y_enemigo, r_enemigo*2, r_enemigo*2);
  pop();

  //dibujo del personaje:
  push();
  fill(200, 0, 0);
  ellipseMode(CENTER);
  ellipse(x_p, y_p, r_p*2, r_p*2);
  pop();
  
  //dibujo la interfase:
  push();
  fill(255);
  textSize(14);
  textAlign(LEFT);
  text("ATRAPÉ: " + junte,20,20);
  text("ESCAPARON: " + caidas,20,40);
  pop();
  
  //evaluo colision:
  //(puedo dibujar una linea, para saber qué estoy midiendo)
  push();
  stroke(0, 255, 0);
  line(x_p, y_p, x_enemigo, y_enemigo);
  pop();
  
  if ( dist(x_p, y_p, x_enemigo, y_enemigo) <= r_enemigo+r_p  ) {
    
    console.log("hay colision"); //imprime en la consola del navegador
    
    //reinicio la ubicacion del enemigo:
    x_enemigo = random(r_enemigo, width-r_enemigo);
    y_enemigo = -r_enemigo-random(50,100);
    
    //aumento uno en la cuenta de "atrapados":
    junte++;
    
    //evalua si gano al alcanzar la cuenta:
    if ( junte>=5 ) {
      //gano: (cambia de estado)
      estado = 3;
    }
    
  }
}
