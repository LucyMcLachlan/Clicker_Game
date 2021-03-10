void gameOver(){
background(0);
fill(white);
rect(300,300,200,80,10);
fill(black);
text("GAME OVER",400,340);
if(score>highScore){
highScore=score;}
fill(red);
text("High Score: "+ highScore, 400,400);
}

void gameOverClicks(){
if(mouseX>300&&mouseX<500&&mouseY>300&&mouseY<380){
mode=INTRO;
vx=random(-5,5);
vy=random(-5,5);
d=random(60,150);
lives=3;
score=0;
}
}
