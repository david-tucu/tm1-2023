float ang;
color colOrigen, colDestino;
void setup () {
  size(800, 400);
  ang = 2;
  colOrigen  = color(random(255), random(255), random(255));
  colDestino = color(0, 255, 255);
}
void draw () {
  background(255);
  translate(600,200);
  for (int i=0; i<10; i++) {
    rotate( radians(ang) );
    rectMode(CENTER);
    float tam = map (i, 0, 9, 400, 0);
    if (i%2== 0) {
      fill(lerpColor (colOrigen, colDestino, map(i, 0, 9, 0, 1)));
    } else {
      fill(255);
    }
    ellipse(0, 0, tam/2, tam);
  }
}
void mousePressed() {
  ang = random(2,10);
  colOrigen  = dameUnColorAleatorio();
  colDestino = color(0, 255, 255);
}
