class Juego {
  constructor() {
    this.estado = 1;
    this.proyectil = new Proyectil();
    this.enemigo = new Enemigo();
    this.puntos = 0;
  }
  actualizar() {
    if ( this.estado === 1) {
      this.evaluarColision();
      
      this.proyectil.actualizar();
      this.enemigo.actualizar();
      
      fill(0);
      textSize(40);
      text("PUNTOS: "+this.puntos, 20,20);
    }
  }
  
  mousePressed(){
    if ( this.estado === 1) {
      this.proyectil.mousePressed();
    }
  }
  
  evaluarColision(){
    if ( this.enemigo.colision( this.proyectil.getX() , this.proyectil.getY() , this.proyectil.getRadio())){
     this.enemigo.reiniciar();
     this.puntos++;
    }
  }
}
