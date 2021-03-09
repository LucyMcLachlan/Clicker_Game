int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAME = 2;
final int GAMEOVER = 3;
// target variables
float x,y,d;
float vx,vy;
int score,lives;
//color pallette
color blue =#3B8686;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  
  //target initialization
  x=width/2;
  y=height/2;
  d=100;
  vx = random(-5,5);
  vy = random(-5,5);
  
  score=0;
  lives=3;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAME) {
    game();
  } else  if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("Error: Mode =" + mode);
  }
}
