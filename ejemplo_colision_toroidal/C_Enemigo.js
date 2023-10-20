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

    /*
    //EVALUACION DE LIMITES POR REBOTE:
    if ( this.x+this.radio>width || this.x-this.radio<0) {
      despX*=-1;
    }
    if ( this.y+this.radio>height || this.y-this.radio<0) {
      despY*=-1;
    }
    //encontramos el nuevo angulo si es que cambio:
    this.dir = atan2(despY, despX);
    //--- FIN DE EVALUACION DE LIMITES POR REBOTE
    */
    
    

    // ESPACIO TOROIDAL
    if (this.x > width + this.radio) {
      // Si la posición en X del objeto es mayor que el ancho de la pantalla más el radio
      // Esto significa que el objeto se movió más allá del límite derecho del espacio

      this.x = -this.radio;
      // Reubicamos el objeto en la posición inicial del lado izquierdo del espacio
    } else if (this.x < -this.radio) {
      // Si la posición en X del objeto es menor que el negativo del radio
      // Esto significa que el objeto se movió más allá del límite izquierdo del espacio

      this.x = width + this.radio;
      // Reubicamos el objeto en la posición inicial del lado derecho del espacio
    }

    if (this.y > height + this.radio) {
      // Si la posición en Y del objeto es mayor que la altura de la pantalla más el radio
      // Esto significa que el objeto se movió más allá del límite inferior del espacio

      this.y = -this.radio;
      // Reubicamos el objeto en la posición inicial del lado superior del espacio
    } else if (this.y < -this.radio) {
      // Si la posición en Y del objeto es menor que el negativo del radio
      // Esto significa que el objeto se movió más allá del límite superior del espacio

      this.y = height + this.radio;
      // Reubicamos el objeto en la posición inicial del lado inferior del espacio
    }

    //--- FIN DE ESPACIO TOROIDAL
  }
  
  dibujar() {
    push();
    translate(this.x, this.y);
    rotate(this.dir);
    fill(100, 0, 0);
    ellipseMode(CENTER);
    ellipse(0, 0, this.radio*2, this.radio*2);
    fill(255);
    ellipse(this.radio*.6, -this.radio*.5, 15, 15);
    ellipse(this.radio*.6, this.radio*.5, 15, 15);
    pop();
  }

  colision( x_, y_, radio_ ) {
    if ( DEBUG ) {
      push();
      stroke(0, 255, 0);
      line( this.x, this.y, x_, y_);
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
