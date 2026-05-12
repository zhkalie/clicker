void gameover() {
  background(pinkie);
  
  music.pause();
  failure.play();
  
  text("gameover :(", 400, 250);
  text("click anywhere to restart!!", 400, 350);
  text("highscoree:", 400, 500);
  
}

void gameoverclick() { 
  mode = intro;
  music.rewind();
}
