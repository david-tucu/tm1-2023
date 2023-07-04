PImage[] fondos;
String[] textos;
int cantImagenes = 3;
int estado;

void setup() {
  size(600, 600);

  //cargamos las imagenes en el arreglo fondo:
  fondos = new PImage[20];
  //ahora con un for cargo las imagenes:
  for ( int i=0; i<cantImagenes; i++ ) {
    fondos[i] = loadImage("fondos/fondo_"+nf(i, 2)+".png");

    //fondos/fondo_01.png
    //fondos/fondo_02.png
    //fondos/fondo_03.png
  }

  //carga de los textos:
  //crear las casillas del array de textos:
  textos = new String[20];
  //ahora escrimos cada texto en cada casillero:
  textos[0] = "Era una mañana muy fría \na orillas del río Iguazú";
  textos[1] = "Allí se encontraban Mateo y Sofía, dos jóvenes aventureros";
  textos[2] = "Decidieron explorar la selva virgen que rodeaba el río";
  textos[3] = "Mientras caminaban entre la exuberante vegetación, descubrieron una antigua cueva";
  textos[4] = "Intrigados, decidieron adentrarse en ella en busca de secretos ocultos";
}

void draw() {
  if ( estado == 0 ) {
    dibujaPantalla( fondos[0], textos[0] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "ANTERIOR");
  }
}
