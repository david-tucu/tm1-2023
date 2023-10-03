class Juego {

  constructor() {
    this.barco =  new Barco();
    this.ballena =  new Ballena();
    this.estado = 1;
    this.espera = millis()+5*1000;
  }

  draw() {

    if ( this.estado == 0) {
    } else if ( this.estado == 1 ) {
      //fondo...
      background(20, 20, 120);
      if ( millis() > this.espera ) {
        this.barco.draw();
        this.ballena.draw();
      } else {
        push();
        fill(255);
        textAlign(CENTER, CENTER);
        text("preparados!", width/2, height/2);
        let falta = this.espera-millis();
        text(round(falta/1000), width/2, height/2+100);
        pop();
      }
      //evaluar si gana o pierde
    } else if ( this.estado == 2 ) {
      //gane...
    } else if ( this.estado == 3 ) {
      //perdi...
    }
  }

  keyPressed() {
    this.ballena.keyPressed();
  }
  mousePressed() {
    //definir que hace el mousePressed dentro del juego...
  }
}
