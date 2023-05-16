int cant;
void setup(){
  size(400,400);
  cant = 8;
  
}

void draw(){
  background(255);
  for ( int i=0; i<cant ; i++ ) {
    //i= 0 1 2 3 4 5 6 7
    modulo( i*50, 200, i*255/7 );
  }
}
