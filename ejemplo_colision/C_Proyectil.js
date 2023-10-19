class Proyectil {
  constructor() {
    this.radio = 10;
    this.x = width*0.5;
    this.y = height*0.5;
    this.dir = 0;
    this.vel = 5;
    this.disparado = false;
  }

  actualizar() {
    this.mover();
    this.dibujar();
  }

  mover() {
    //pendiente...
    if (!this.disparado) {
      this.dir = atan2(mouseY-this.y, mouseX-this.x);
    } else {
      //se mueve en su direccion:
      this.x+= cos(this.dir)*this.vel;
      this.y+= sin(this.dir)*this.vel;
      //si sale de la ventana:
      if (this.x>width || this.x<0 || this.y>height ||this.y<0 ) {
        //salio de la ventana:
        this.disparado = false;
        this.x = width*0.5;
        this.y = height*0.5;
      }
    }
  }
  dibujar() {
    push();
    translate(this.x, this.y);
    rotate(this.dir);
    fill(0);
    rectMode(CENTER);
    rect(0, 0, this.radio, this.radio*0.25 );
    pop();
  }

  mousePressed() {
    if ( !this.disparado ) {
      this.disparado = true;
    }
  }

  getX() {
    return this.x;
  }
  getY() {
    return this.y;
  }
  getRadio() {
    return this.radio;
  }
}
