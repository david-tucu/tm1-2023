let tam=0;
function setup() {
  createCanvas(400, 400);
  console.log("Holis Mundis");
  //con mi propia funcion:
  mensaje( "Chauchis" );
}


function draw() {
  tam+=1;
  console.log(tam);
  background(200,0,0);
  ellipse(100,100,tam,tam);
}
