

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  rectMode(CENTER);
  //contar los indices:
  for (int i = 0; i<=10; i++) {
    //float tam = i*40;
    float tam = map(i, 0, 10, 400, 0);
    float col = map(i, 0, 10, 0, 255);
    float colLinea = map(i, 0, 10, 255, 0);
    fill(col);
    stroke(colLinea);
    //stroke( map(i,0,10,255,0) );
    //tam 400 360 ... 0
    //noFill();
    rect(200, 200, tam, tam);
  }
}
