void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  ellipse(100, 200, 80, 80);
  line( 100, 200, mouseX, mouseY);

  rect( 210, 150, 110, 80);
}

void mousePressed() {
  if (  dist( mouseX, mouseY, 100, 200)<40 )  {
    //hice click en el circulo
    //centrado en 100,200 de radio 40
    println("click en el círculo");
  }
}
