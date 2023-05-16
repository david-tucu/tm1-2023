
void setup() {
  size(400, 400);
  frameRate(10);
}

void draw() {
  background(255);

  //otra manera de lograr lo mismo:
  for ( int a=0; a<11; a++) {
    
    for ( int b=0; b<11; b++) {
      
      fill( map(a,0,9,0,255)  ,  map(b,0,9,255,0) , 0 );
      push();
      translate(a*40, b*40);
      rotate(PI/4);
      rect(0,0, 40, 40);
      fill(255, 255, 0);
      text (a+","+b, 0,0, 40, 40 );
      pop();
    }
  }
}
