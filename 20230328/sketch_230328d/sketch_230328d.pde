
//preparamos un espacio en memoria para la imagen:
PImage imagen;

void setup(){
  //establecemos 800x400 el tamaño de la ventana:
  size(800,400);
  //cargamos la imagen:
  imagen = loadImage("data/retrato.png");

}
void draw(){
  background(255,0,0);
  image( imagen , 400, 0 , 400 , 400 ); 
  
}
