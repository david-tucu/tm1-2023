size(200,200);
background( random(0,255) , sqrt(40000), alea() );

float alea(){
  return random(0,255);  
}

if ( colisionCircularMouse(40,20,100) ){
  //el mouse esta en esa zona circular
} 

boolean colisionCircularMouse( float x_ , float y_ ,  float r_  ) {
  if ( dist(mouseX,mouseY,x_,y_) < r_ ) {
    return true; 
  } else {
    return false; 
  }
}
