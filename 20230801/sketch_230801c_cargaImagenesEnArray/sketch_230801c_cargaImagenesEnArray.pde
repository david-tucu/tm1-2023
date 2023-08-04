//declaracion: (En este caso de ámbito 'global', 
//porque está declarada fuera de las estructuras)
PImage[] fondos;
int cant = 4;

void setup() {
  size(600, 600);
  //carga de las imagenes:

  //construccion de las casillas del arreglo:
  fondos = new PImage[cant]; //4 casilleros

  //carga la imagen en cada casillero del arreglo:
  //así lo haríamos SIN usar for:
  /*
  fondos[0] = loadImage("img_00000.jpg");
  fondos[1] = loadImage("img_00001.jpg");
  fondos[2] = loadImage("img_00002.jpg");
  fondos[3] = loadImage("img_00003.jpg");
  */
  
  //PEEERO vamos a hacerlo usando for.
  //Con un for recorremos una variables numérica
  //para armar y cargar todos los nombres de archivos:
  for ( int i=0; i<cant; i++ ) {
    //en cada vuelta del for, i vale: 0, 1, 2, 3, 4
    
    fondos[i] = loadImage(  "img_" + nf(i, 5) + ".jpg"   );
    //Con nf() obtenemos: 00000 00001 00002 00003 00004
    //Con la concatenación armamos: "img_00000.jpg" "img_00001.jpg" "img_00002.jpg"
  }
}

void draw() {
  background(255);
  //ejemplo para usar UNA de las imagenes del array:
  //(en este caso la del primer casillero)
  image(fondos[0], 0, 0, width, height);
}
void mousePressed() {
}
