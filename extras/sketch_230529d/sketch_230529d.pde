/*

   _4_
int x
 
      _5.4_
float desp

Array:

      _4_  _12_  _4_  _6_  _8_
      0    1     2    3    4 
int[]  x

        45   0.0   125    0.0    0.0
        __   __    __     __     __
        0    1     2      3      4
float[] tam
*/

//declaracion de un arreglo:
float[] tam;

void setup(){
  size(400,400);
  //creacion de lasillas:
  tam = new float[5]; 
 
  //accedo a un casillero para asignar un valor:
  tam[0] = 45;
  tam[2] = 125;
  tam[3] = random(0,400);
}

void draw(){
  background(255);
  //accedo a un casillero para invocar el valor:
  rect( 0,0,20,tam[0]);
  rect(20,0,20,tam[1]);
  rect(40,0,20,tam[2]);
  rect(60,0,20,tam[3]);
  rect(80,0,20,tam[4]);
  
  //accedo a un casillero para modificar su valor:
  tam[4]++;
  //tam[4] = tam[4]+1;
  
  tam[1] = random(0,400);
}

void mousePressed(){
  tam[3] = random(0,400); 
}
