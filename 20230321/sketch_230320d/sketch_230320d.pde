/*Ejemplo de aplicación estática*/

size(400,400);
background(0,255,0);

noStroke();
ellipse(0-5,height/2,width,height);
ellipse(width+5,height/2,width,height);

fill(100);
textSize(100);
text("Tucu",120,320);

save("captura.png");
