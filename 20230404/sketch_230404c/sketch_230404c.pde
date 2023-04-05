/*ejemplo en clase para mostrar algunas funciones especiales como
push()
pop()
bezier()
*/
void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  strokeWeight(4);
  fill(240, 230, 225);
  ellipse(200, 200, 240, 260);
  line(160, 270, 240, 270);
  
  push(); //guardo la configuracion de estilos
  fill(255, 0, 0);
  stroke(150,0,0);
  strokeWeight(8);
  bezier(160, 270, 160+20, 270+50, mouseX, mouseY, 240, 270);
  line(20,20,20,380);
  pop(); //descarto los cambios de configuracion de estilo
  
  strokeWeight(1);
  
  //solo para referencia visual, muestro los "manejadores"
  line(160, 270, 160+20, 270+50);
  line(mouseX, mouseY, 240, 270);
  
  println(mouseX +","+ mouseY);
}
