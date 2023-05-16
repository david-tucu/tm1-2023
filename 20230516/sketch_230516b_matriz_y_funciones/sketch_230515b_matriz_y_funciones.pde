float ang;
void setup(){
 size(400,300); 
 ang = 0;
}

void draw(){
  ang+=0.5;
  
  background(255,0,0);
  //invoco a la funciona:
  dibujaCarita();
  
   noFill();
   rect(40,40,320,220);
 
}
