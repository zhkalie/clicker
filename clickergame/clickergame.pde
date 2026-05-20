//--images & stamp functions
PImage pusheen;
boolean pv;

PImage heart;
boolean hv;

PImage hk;
boolean hkv;

//--slider variables
float slidery;





//--music necessities
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//mode variables
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

//float variables
float x, y, z;
float vx, vy;
float a = random(0, 2*PI);
int score, lives, highscore;
int ball = 0;

//colour variables
color lp = #FAE8F1;
color pinkie = #F0DAE5;
color cocoa = #C49F7D;
color grey = #D3CEC2;

//sound variables
Minim minim;
AudioPlayer music, success, failure;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  
  
  //-- target 
  x = width/2;
  y = height/2;
  z = 100;
  vx = 5*sin(a);
  vy = 5*cos(a);
  
  score = 0;
  lives = 3;
  
  //mode
  mode = intro;
  
  //music
  minim = new Minim(this);
  music = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  
  //images
  pusheen = loadImage("sleepypusheen.png");
  pv = true;
  
  heart = loadImage("pusheen.png");
  hv = false;
  
  hk = loadImage("hk.png");
  hkv = false;
  
  slidery = 445;
}

void draw() {
  if (mode == intro) {
    intro();
  }else if (mode == game) {
    game();
  }else if (mode == options) {
    options ();
  }else if (mode == pause) {
    pausescreen();
  }else if (mode == gameover) { 
    gameover();
  }else {
    println("Error:Mode=" + mode);
  }
}
