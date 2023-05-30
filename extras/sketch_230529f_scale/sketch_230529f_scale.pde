
float aumenta;

void setup() {
  size(400, 400);
  aumenta = 1;
}

void draw() {
  background(255);
  translate(200, 200);
  scale(aumenta, aumenta);
  
  triangle(-160, 100, 0, -100, 160, 100);
  scale(.33, .33);
  
  triangle(-160, 100, 0, -100, 160, 100);
  scale(.33, .33);
  
  triangle(-160, 100, 0, -100, 160, 100);
  scale(.33, .33);
 
  triangle(-160, 100, 0, -100, 160, 100);
  scale(.33, .33);

  aumenta+=.025;
  if ( aumenta>=3) {
    aumenta = 1;
  }
}
