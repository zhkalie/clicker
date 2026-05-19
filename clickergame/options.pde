void options() {
  println(mouseX, mouseY);
  
  fill(255, 20);
  noStroke();
  rect( 400, 400, 600, 500, 100);
  
  fill(grey);
  stroke(pinkie);
  strokeWeight(5);
  rect(400, 600, 200, 80);
  
  fill(255);
  textSize(45);
  text("save!", 400, 600);

  //pv();
  circle(200, 250, 150);
  image(pusheen, 200, 250, 150, 150);
  
  //hkv();
  circle(400, 250, 150);
  image(hk, 400, 250, 150, 150);
  
  //hv();
  circle(600, 250, 150);
  image(heart, 600, 250, 150, 150);
  
  size = map(slidery, 370, 520, 50, 200);
  fill(pinkie);
  line(200, 370, 200, 520);
  fill(255);
  stroke(pinkie);
  circle(200, slidery, size);
  
  circle(400, 450, size);
  
}

void optionsclick() {
    ////circle(200, 250, 150);
  //image(pusheen, 200, 250, 150, 150);
  if(dist(200, 250,mouseX, mouseY) < 75){
    image(pusheen, 400, 450, size, size);
    
    pv = !pv;
  }
  //circle(400, 250, 150);
  //image(hk, 400, 250, 150, 150);
  if(dist(600, 250,mouseX, mouseY) < 75){
    image(hk, 400, 450, size, size);
    
    hkv = !hkv;
  }
  //circle(600, 250, 150);
  //image(heart, 600, 250, 150, 150);
  if(dist(600, 250,mouseX, mouseY) < 75){
    image(heart, 400, 450, size, size);
    hv = !hv;
  }
  
  //rect(400, 600, 200, 80);
  if(mouseX > 300 && mouseX < 500 && mouseY > 560 && mouseY < 640) {
  mode = intro;
  }
  
}


void slider () {
  //200, 370, 200, 520
  if (mouseX > 175 && mouseX < 225 && mouseY > 370 && mouseY < 520) {
    slidery = mouseY;
  }
}
