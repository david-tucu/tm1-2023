float ang;
void setup(){
 size(400,300); 
 ang = 0;
}

void draw(){
  ang+=0.5;
  
  background(255,0,0);
  //invoco a la funciona:
  dibujaCarita( mouseX, mouseY);
  dibujaCarita( 300, 50);
  dibujaCarita( 300, 100);
  dibujaCarita( 300, 150);
  dibujaCarita( 300, 200);
  dibujaCarita( 300, 250);
  
   noFill();
   rect(40,40,320,220);
 
}
