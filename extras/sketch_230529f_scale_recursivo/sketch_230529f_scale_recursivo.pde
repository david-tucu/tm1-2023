
float aumenta; //para el "avance" global
float escala = .66; //cuanto cambia la escala hacia la repetición
//la variable sirve para saber hasta cuánto debe crecer "aumenta"
//para volver a 1 en el momento exacto que coincide con la variación
//entre un módulo y otro

void setup() {
  size(400, 400);
  aumenta = 1;
}

void draw() {
  background(255);
  translate(200, 200);
  //rotacion global:
  //rotate(frameCount*.005);
  //"avance" global:
  scale(aumenta);

  //se llama la función recursiva. 
  //la función se llamará a sí misma, con uno menos
  //en la cantidad de recursión
  trianguloRecursivo(12, escala);

  //incrementa el valor de aumenta
  //exponencialmente para conservar la sensación
  //de velocidad en las escalas más grandes
  aumenta*=1.025;

  if ( aumenta>=1/escala) {
    //esta condición evalúa que el incremento de "aumenta"
    //sea el opuesto a la variación entre módulos, así
    //al volver a 1 coincide con la escala de repetición

    aumenta = 1;
  }
}

void trianguloRecursivo( int nivel_, float nuevaScala_ ) {
  strokeWeight(2);
  noFill();

  //un triangulo:
  //dibuja un trinagulo calculando sus vértices con
  //coordenadas polares:
  //angulo: 1 tercio de la circunferencia
  //distancia: un radio suficientemente grande para
  //que el dibujo termine de cubrir la ventana.
  triangle(
    cos(TWO_PI/3*0)*400, sin(TWO_PI/3*0)*400, 
    cos(TWO_PI/3*1)*400, sin(TWO_PI/3*1)*400, 
    cos(TWO_PI/3*2)*400, sin(TWO_PI/3*2)*400
    );


  /*
   //un circulo:
   ellipse(0,0,400,400);
   */


  /*
   //un rectangulo con esquinas redondeadas:
   rectMode(CENTER);
   rect(0,0,400,400,50);
   */

  //evalua si debe llamar un nivel más de recursión:
  if ( nivel_>0 ) {
    scale(nuevaScala_);
    trianguloRecursivo( nivel_-1, nuevaScala_ );
  }
}
