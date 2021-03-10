void game() {
  background(255);
  fill(black);
  stroke(black);
  strokeWeight(1);
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

  //pause button
  strokeWeight(2);
  fill(white);
  rect(50, 50, 50, 50, 10);
  stroke(grey);
  line(70, 60, 70, 90);
  line(80, 60, 80, 90);
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score=score+1;
    d=random(60, 150);
    vx=random(-5, 5);
    vy=random(-5, 5);
    x=random(r+25, width-r-25);
    y=random(r+25, height-r-25);
  } else if (mouseX>50&&mouseX<100&&mouseY>50&&mouseY<100) {
    fill(white);
    stroke(black);
    strokeWeight(2);
    rect(50, 50, 50, 50, 10);
    stroke(grey);
    fill(grey);
    triangle(70, 60, 70, 90, 80, 75);
    strokeWeight(2);
    mode=PAUSE;
  } else {
    lives=lives-1;
    if (lives == 0)  mode= GAMEOVER;
  }
}
