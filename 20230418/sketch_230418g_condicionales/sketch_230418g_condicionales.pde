void setup() {
  size(300, 100);
}


void draw() {
  background(255);
  if ( mouseY <= 50 ) {
    background(0, 255, 0);
    ellipse(50,50,100,100);
  } else {
    background(255, 0, 0);
    rect(mouseX,mouseY,60,60);
  }


  //   circle(90*3,40*3,10);
  line (0, 50, 300, 50);
  line(150, 0, 150, 100);

  ellipse (150, 50, 1, 1);
}
