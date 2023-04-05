
//preparamos un espacio en memoria para la imagen:
PImage imagen;

void setup(){
  //establecemos 800x400 el tamaño de la ventana:
  size(800,400);
  //cargamos la imagen en la variable:
  imagen = loadImage("data/retrato.png");

}
void draw(){
  background(255,0,0);
  //con la función image mostramos la imagen:
  image( imagen , 400, 0 , 400 , 400 ); 
  strokeWeight(10);
  //dibujamos el retrato:
  ellipse(200,200,300,360);
  line (100,250,300,250);
}
