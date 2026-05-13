void options() {
  fill(255, 20);
  noStroke();
  rect( 400, 400, 600, 500, 100);
  
  fill(211, 206, 194);
  stroke(pinkie);
  strokeWeight(5);
  rect(400, 600, 200, 80);
  
  fill(255);
  textSize(45);

  circle(200, 250, 150);
  image(pusheen, 200, 250, 150, 150);
  

  circle(400, 250, 150);
  image(hk, 400, 250, 150, 150);
  

  circle(600, 250, 150);
  image(heart, 600, 250, 150, 150);
  
  size = map(slidery, 200, 370, 1, 100);
  fill(pinkie);
  line(200, 370, 200, 520);
  fill(255);
  stroke(pinkie);
  circle(200, slidery, size);
}

void optionsclick() {
}


void slider () {
  //200, 370, 200, 520
  if (mouseX > 200 && mouseX < 370 && mouseY > 200 && mouseY < 520) {
    slidery = mouseY;
  }
}
