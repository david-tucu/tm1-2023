float x, despX;
float cuentaF;
void setup() {
  size(400, 400);
  x = 0;
  despX = 2;
  cuentaF = 0;
}

void draw() {
  background(255);

  fill(0);
  text("MI TITULO IDA Y VUELTA", x, 100);


  x+=despX;
  if ( x>400-120 ) {
    despX = -2;
  }
  if ( x<0 ) {
    despX = 2;
  }

  cuentaF++;
  if (cuentaF>60*10) {
    //cambio a siguiente estado
  }
}
