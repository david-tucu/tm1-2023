class Enemigo {
  constructor() {
    this.radio = 20;
    this.x = random(this.radio, width-this.radio);
    this.y = random(this.radio, height-this.radio);
    this.vivo = true;
    this.dir = random(TWO_PI);
    this.vel = random(2, 3);
  }

  actualizar() {
    if (this.vivo) {
      this.mover();
      this.dibujar();
    }
  }

  mover() {
    //mueve el enemigo con
    //desplazamiento con coordenadas polares
    let despX = cos(this.dir)*this.vel;
    let despY = sin(this.dir)*this.vel;
    this.x+= despX;
    this.y+= despY;
    if ( this.x+this.radio>width || this.x-this.radio<0) {
      despX*=-1;
    }
    if ( this.y+this.radio>height || this.y-this.radio<0) {
      despY*=-1;
    }
    //encontramos el nuevo angulo si es que cambio:
    this.dir = atan2(despY, despX);
  }
  dibujar() {
    push();
    translate(this.x, this.y);
    rotate(this.dir);
    fill(100,0,0);
    ellipseMode(CENTER);
    ellipse(0, 0, this.radio*2, this.radio*2);
    fill(255);
    ellipse(this.radio, -10, 15, 15);
    ellipse(this.radio, 10, 15, 15);
    pop();
  }

  colision( x_, y_, radio_ ) {
    if ( DEBUG ) {
      push();
     stroke(0,255,0);
     line( this.x,this.y, x_,y_);
     pop();
    }
    if ( dist( this.x, this.y, x_, y_) < this.radio+radio_ ) {
      //hay colision:
      return true;
    } else {
      return false;
    }
  }

  reiniciar() {
    this.x = random(this.radio, width-this.radio);
    this.y = random(this.radio, height-this.radio);
    this.vivo = true;
    this.dir = random(TWO_PI);
    this.vel = random(2, 3);
  }
}
