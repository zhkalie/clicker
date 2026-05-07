void game() {
  background(0);
  
  //pause button
  stroke(255);
  fill(255);
  circle(35, 35, 50);
  
  text("Score; " + score, width/2, z);
  text("Lives: " + lives, width/2, z*2);
  
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, z);
  
  
  x = x + vx;
  y = y + vy;
  
  
  if (x < z/2 || x > width - z/2) {
    vx = vx * -1;
  }
  if (y < z/2 || y > height - z/2) {
    vy = vy * -1;
  }
}

void gameclick() {
  if ( dist(mouseX, mouseY, x, y) < z) {
   score = score + 1; 
   success.rewind();
   success.play();
  } else {
    lives = lives - 1;
    failure.rewind();
    failure.play();
    if (lives == 0) mode = gameover;
  }

}
