int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;


float x, y, z;
float vx, vy;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  x = width/2;
  y = height/2;
  z = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  
  
  mode = intro;
}

void draw() {
  if (mode == intro) {
    intro();
  }else if (mode == game) {
    game();
  }else if (mode == pause) {
    pause();
  }else if (mode == gameover) { 
    gameover();
  }else {
    println("Error:Mode=" + mode);
  }
}
