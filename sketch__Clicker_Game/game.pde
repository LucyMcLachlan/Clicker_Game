void game() {
  background(255);
  circle(x, y, d);

  text("Score: "+score, width/2, 50);
  text("Lives: "+lives, width/2, 80);

  // moving
  x = x + vx;
  y = y + vy;

  // bouncing
  if (x<d/2 || x>width-d/2) {
    vx=vx*-1;
  }

  if (y<d/2 || y>height-d/2) {
    vy=vy*-1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score=score+1;
  } else {
    lives=lives-1;
    if (lives == 0)  mode= GAMEOVER;
     
  }
}
