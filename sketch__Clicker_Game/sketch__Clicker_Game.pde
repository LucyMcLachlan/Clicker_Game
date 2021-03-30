import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
// target variables
float x, y, d, r;
float vx, vy;
int score, lives;
int highScore;
float targetSize;
//slider variables
float sliderY;
//color pallette
color blue =#3B8686;
color darkBlue =#012677;
color lightBlue=#6EC2C9;
color mediumBlue=#059EAA;
color white =#FFFFFF;
color black= #000000;
color grey= #AFAFAF;
color red=#C10000;
color orange=#FCA624;
color sand=#B29F3F;
//target image variables
PImage beachBall;//from http://www.pngall.com/beach-ball-png/download/10082
PImage bottle;//from https://creazilla.com/nodes/61044-message-in-a-bottle-clipart
PImage bubble; //from https://gallery.yopriceville.com/Free-Clipart-Pictures/Decorative-Elements-PNG/Bubble_Sphere_PNG_Transparent_Image#.YGFNUy295pR
PImage jellyFish;// from http://www.pngmart.com/image/40623

boolean beachBallOn, bottleOn, bubbleOn, jellyFishOn;

// background image variables
PImage kelp;// this has been reposted so much that i can't find who made it
PImage beach;//from https://www.freepik.com/premium-vector/cartoon-beach-landscape-summer-ocean-sandy-seashore-vacation-tropical-view-sea-nature-paradise-landscape-background-illustration-coast-seaside-shore-outdoor-season-summer_9395461.htm

// sound variables

Minim minimTools;
AudioPlayer music, bump, coin, gameOver;
void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  //target initialization
  x=width/2;
  y=height/2;
  r=targetSize/2;
  vx = random(-1, 1);
  vy = random(-1, 1);
  sliderY=200;

  score=0;
  lives=3;

  //loading images
  beachBall= loadImage("beachBall.png");
  bottle= loadImage("bottle.png");
  bubble= loadImage("bubble.png");
  jellyFish= loadImage("jellyFish.png");
  kelp=loadImage("seaweed.png");
  beach=loadImage("background.jpg");

  beachBallOn=true;

  //minim
  minimTools=new Minim(this);
  music = minimTools.loadFile("gameMusic.mp3");
  bump = minimTools.loadFile("bump.wav");
  coin = minimTools.loadFile("coin.wav");
  gameOver = minimTools.loadFile("gameover.wav");
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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode =" + mode);
  }

  r=d/2;
}
