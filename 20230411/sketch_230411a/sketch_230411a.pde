PImage miImagen;



//declaracion del setup:
void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  textSize(50);
  fill(255);
  text("mouseX", 200, 100);
  text(mouseX, 200, 200);
  text(mouseX, mouseX, 300);
}

void mousePressed() {
  println("click");
  background(255, 0, 0);
}

void mouseReleased() {
  println("solto del boton del mouse");
  background(0, 255, 0);
}
//eventos de mouse:
/*
mouseClicked()
 mouseDragged()
 mouseMoved()
 
 //eventos de teclado:
 keyPressed()
 keyReleased()
 
 */
