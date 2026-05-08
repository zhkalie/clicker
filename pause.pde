void pausescreen() {
  music.pause();
  fill(255);
  textSize(200);
  text("pausedd!!", 400, 400);
  
}

void pauseclick() {
  if (dist(mouseX, mouseY, 35, 35) < 30) {
    mode = game;
  }
  
}
