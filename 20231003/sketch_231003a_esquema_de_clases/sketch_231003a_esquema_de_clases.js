/*
-- definir el tema y la propuesta

-- definir el modelo de clases (class)

POO
OOP

//clase:
Juego
 //propiedades
     //estado
     Barco
     Ballena
     Fondo
     
    
 //constructor
   
 //metodos
 //draw()
    fondo.draw()
    barco.actualizar
    ballena.actualizar
 
 //evaluar colision click con el blanco
   
//

//entre enero-junio
clase Ballena
//propiedades
   x,y, tam, vel
   img
   ultimaTeclaPresionada

   
//constructor
   x = 0
   y = 0
   ...
   img = loadImage()
   
//metodos
   draw()
     mover()
     dibujar()
     desacelera()
     
   keyPressed()
     acelerar()
     

//entre julio-diciembre
clase Barco
//propiedades
   x,y,t,vel;
   PImage img;
   
//constructor
    this.x = 0;
    this.y = height/2;
    this.t = (tamaño de la imagen)
    this.img = loadImage(imagenDelBarco);
    
    
    
//metodos
    actualizar()
      mover()
      dibujar()
      
    obtenerPosX()
    getPosX()  
    
    
/*

class Barco {

  constructor(){
    this.x = -100;
    this.y = height/2;
    this.t = 40;
  }
  
  actualizar(){
   this.mover();
   this.actualizar();
  }
  
  mover(){
    this.x+=this.vel;  
    if( this.x >= width+this.t ){
      this.x = -100;  
    }
  }
  
  dibujar(){
    fill( 116, 57, 12 );
    rect( this.x, this.y, this.t*2, this.t );
  }

}
*/






clase Fondo
   //propiedades
   img
   //constructor
   this.img = loadImage
   //metodos
   draw()
   
   






*/
