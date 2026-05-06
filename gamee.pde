void game() {
  background(0);
  
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, z);
  
  
  x = x + vx;
  y = y + vy;
  
  
  if (x < 50 || x > width - 50) {
    vx = vx * -1;
  }
  if (y < 50 || y > height - 50) {
    vy = vy * -1;
  }
}

void gameclick() {
  
  
}
