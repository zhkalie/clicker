void game() {
  println(mouseX, mouseY);
  background(pinkie);
  
  //pause button
  stroke(255);
  fill(255);
  circle(35, 35, 50);
  noStroke();
  fill(pinkie);
  rect(25, 35, 10, 30);
  rect(45, 35, 10, 30);
  
  stroke(255);
  fill(255);
  textSize(50);
  text("Score: " + score, width/2, z);
  text("Lives: " + lives, width/2, z*2);
  
  fill(255);
  noStroke();
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
  } else if (dist(mouseX, mouseY, 35, 35) < 30) {
    mode = pause;
  } else {
    lives = lives - 1;
    failure.rewind();
    failure.play();
    if (lives == 0) mode = gameover;
  }

}
