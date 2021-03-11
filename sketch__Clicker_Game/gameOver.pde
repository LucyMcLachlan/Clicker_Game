void gameOver(){
background(0);
fill(red);
textSize(50);
text("GAME OVER",400,340);
if(score>highScore){
highScore=score;}
textSize(30);
fill(red);
text("High Score: "+ highScore, 400,400);
}

void gameOverClicks(){
mode=INTRO;
vx=random(-5,5);
vy=random(-5,5);
d=targetSize;
lives=3;
score=0;
}
