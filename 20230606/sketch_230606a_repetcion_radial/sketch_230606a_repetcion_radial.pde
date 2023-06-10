
void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  push();
  translate(400+200, 200);
  //invocación:
  dibujaPuntosDeFuga();
  pop();
  circle( mouseX,mouseY,20);
}
