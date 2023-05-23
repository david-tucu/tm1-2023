int cant; //variable para la cantidad de modulos
float mod; //variable para guardar la medida de cada modulo
void setup() {

  //tamaño de la ventana
  size(400, 400);
  cant = 50; //asigno 50 en la variable cantidad
  mod = width/cant; //calculo el tamaño y lo guardo en la varible (divido el ancho de la ventana en la cantidad)
}
void draw() {
  for ( int a=0; a<cant; a++ ) { //for para recorrer una dimension
    for ( int b=0; b<cant; b++ ) { //for para recorrer otra dimension
      if ( (a+b)%2 == 0 ) { //si la suma de los indices es par
        fill(0); //si es true, arma fill negro.
      } else {
        fill(255); //si no, arma fill blanco.
      }
      //dibuja el rectangulo
      //ya se armó color blanco o negro
      //la ubicacion de cada cuadrado será el cálculo correspondiente
      //al indice de cada dimension (a y b)
      //el calculo es el índice por el tamaño de del modulo.
      rect(a*mod, b*mod, mod, mod); 
      
      
    }
  }
}
