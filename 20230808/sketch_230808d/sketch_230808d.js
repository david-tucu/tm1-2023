let anchoFilete;

function setup() {
  createCanvas(400, 300);
  anchoFilete = 10;
}


function draw() {
  fill(0, 200, 0);
  stroke(anchoFilete);
  strokeWeight(4);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
