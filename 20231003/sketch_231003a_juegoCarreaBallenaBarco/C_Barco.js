class Barco {
  /*
propiedades
   x,y, tam, vel
   img
   
   */

  constructor() {
    this.x = 0;
    this.y = height*0.5;
    this.tam = 60;
    this.vel = .8;
    //this.img = loadImage();
  }
  //metodos
  draw() {
    this.mover();
    this.dibujar();
  }
  
  //declaracion de mover:
  mover(){
    this.x+=this.vel;  
  }
  dibujar(){
   push();
     translate(this.x,this.y);
     rotate(sin(frameCount*.1)*.2);
     fill(200,200,255);
     rectMode(CENTER);
     rect(0,0,this.tam,this.tam);
   pop();
    
  }
  
  getPosicionX(){
   return this.x; 
  }
}
