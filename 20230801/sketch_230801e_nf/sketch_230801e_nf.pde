//ejemplo nf()
//esta funcion espera dos parámetros
//y retorna una cadena completando la 
//cantidad de dígitos solicitados.
//por ejemplo:
//nf(123,8) -> retorna -> "00000123"

void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  textSize(100);
  textAlign(CENTER, CENTER);
  text( nf(frameCount,8) , 200, 200);
}
