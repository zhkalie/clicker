void intro() {
  music.play();
  
  background(pinkie);
  
  fill(255);
  textSize(100);
  text("Clicky Game", 400, 300);
  
  
  strokeWeight(10);
  stroke(255);
  fill(pinkie);
  tt();
  rect(400, 500, 200, 80);
  fill(255);
  textSize(50);
  text("Start!", 400, 500);
  
  fill(pinkie);
  tc();
  rect(400, 600, 200, 50);
  fill(255);
  textSize(35);
  text("Options", 400, 600);
  println(mouseX, mouseY);
  
}

void introclick() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
  mode = game;
  lives = 3;
  score = 0;
  } 
  
  if(mouseX > 300 && mouseX < 500 && mouseY > 570 && mouseY < 630) {
    mode = options;
  }
}


void tt() {
   if(mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
     stroke(grey);
     fill(lp);
   } else {
     stroke(255);
     fill(pinkie);
   }
}

void tc() {
   if(mouseX > 300 && mouseX < 500 && mouseY > 570 && mouseY < 630) {
     stroke(grey);
     fill(lp);
   } else {
     stroke(255);
     fill(pinkie);
   }
}
