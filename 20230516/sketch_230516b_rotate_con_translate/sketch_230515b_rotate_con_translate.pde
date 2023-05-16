void setup(){
 size(400,300);  
}

void draw(){
  background(255,0,0);
  
  translate(200,150); //mueve el origen 200 en x 150 en y
  line(0,0,400,0);
  line(0,0,0,300);
  
  rotate( radians(mouseX) ); //expresar en radianes
  line(0,0,400,0);
  line(0,0,0,300);
  
  rect(0,0,100,100); //dibujamos relativo a 0,0
  rect(30,30,100,100);
  
}
