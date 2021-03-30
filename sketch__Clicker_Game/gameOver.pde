void gameOver(){
background(darkBlue);
music.pause();
gameOver.play();
image(kelp,60,630,400,350);
image(kelp,750,630,400,350);
fill(orange);
textSize(50);
text("GAME OVER",400,340);
if(score>highScore){
highScore=score;}
textSize(30);
text("High Score: "+ highScore, 400,400);
}
  
void gameOverClicks(){
mode=INTRO;
vx=random(-5,5);
vy=random(-5,5);
d=targetSize;
lives=3;
score=0;
music.rewind();
music.play();
gameOver.pause();
gameOver.rewind();
}
