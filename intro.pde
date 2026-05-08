void intro() {
  music.play();
  
  background(pinkie);
  
  fill(255);
  textSize(100);
  text("Clicky Game", 400, 300);
  
  
  strokeWeight(10);
  stroke(255);
  fill(pinkie);
  rect(400, 500, 200, 100);
  
  //if(mouseX > 200 && mouseX < 600 && mouseY > 400 && mouseY < 600) {
  //  stroke(255);
  //} else {
  //  stroke(255);
  //}
  
  fill(255);
  textSize(50);
  text("Start!", 400, 500);
}

void introclick() {
  if(mouseX > 200 && mouseX < 600 && mouseY > 400 && mouseY < 600) {
  mode = game;
  lives = 3;
  score = 0;
  } 
}
