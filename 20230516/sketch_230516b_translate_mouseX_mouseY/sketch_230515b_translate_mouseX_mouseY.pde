float ang;
void setup(){
 size(400,300); 
 ang = 0;
}

void draw(){
  ang+=0.5;
  
  background(255,0,0);
  
  push(); //recordamos la transformacion de la matriz
          //a este punto
  translate(mouseX,mouseY); //mueve el origen 200 en x 150 en y
  rotate( radians(ang) ); //expresar en radianes
  fill(255,255,0);
  rect(0-50,0-50,100,100); //dibujamos relativo a 0,0
  pop(); //volvemos al punto que recordamos
  
   noFill();
   rect(40,40,320,220);
 
}
