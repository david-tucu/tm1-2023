//declaracion de una funcion CON parametros:
function textoCentrado( texto ){
  push();
  textSize(40);
  fill(200,0,0);
  textAlign(CENTER, CENTER);
  text( texto, width*0.5, height*0.5);
  pop();
}
