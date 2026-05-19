void pausescreen() {
  music.pause();
  fill(255);
  textSize(200);
  text("pausedd!!", 400, 400);
  
  circle(35, 35, 50);
  fill(pinkie);
  noStroke();
  triangle(25, 15, 55, 35, 25, 55);
  
}

void pauseclick() {
  if (dist(mouseX, mouseY, 35, 35) < 30) {
    mode = game;
  }
  
}
