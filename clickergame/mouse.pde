void mouseReleased() {
  if (mode == intro) {
    introclick();
  }else if (mode == game) {
    gameclick();
  }else if (mode == options) {
    optionsclick();
  }else if (mode == pause) {
    pauseclick();
  }else if (mode == gameover) { 
    gameoverclick();
  }
}
