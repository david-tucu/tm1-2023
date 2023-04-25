//declaracion con asignacion:
String estado = "inicio";
//


void setup() {
  size(640, 480);
  //60 fps por defecto
  frameRate(30); //lo establecemos en 30
}

void draw() {
  //println( frameRate ); //muestra los fps reales
  background(255);


  if ( estado.equals("inicio") ) {
    //pantalla de inicio:
    fill(0);
    textAlign(CENTER);
    textSize(60);
    text("Click para empezar", width/2, height/2 );
  } else if ( estado.equals("pantalla 1")  ) {
    //pantalla 1:
    fill(0);
    textAlign(CENTER);
    textSize(30);
    text("SuperART", width/2, height/2 );
    textSize(20);
    text("Autor: Carlos Muñoz", width/2, height/2+20 );
  } else if ( estado.equals("pantalla 2") ) {

    //pantalla 2:
    fill(0);
    textAlign(CENTER);
    textSize(30);
    text("SuperART", width/2, height/2 );
    textSize(20);
    text("Año: 1978", width/2, height/2+20 );
  } else if ( estado.equals("pantalla 3") ) {

    //pantalla 3:
    fill(0);
    textAlign(CENTER);
    textSize(30);
    text("SuperART", width/2, height/2 );
    textSize(20);
    text("Premios: Mingo de Oro (1979)", width/2, height/2+20 );
  }
}

void mousePressed() {
  if ( estado.equals("inicio") ) {
    estado = "pantalla 1";
  } else if ( estado.equals("pantalla 1") ) {
    estado = "pantalla 2";
  } else if ( estado.equals("pantalla 2") ) {
    estado = "pantalla 3";
  } else if ( estado.equals("pantalla 3") ){
    estado = "inicio";
  }
  
}
