void game() {
  background(mediumBlue);

image(beach,400,400,900,800); 

  strokeWeight(3);
  stroke(blue);
  fill(white);
  circle(x, y, targetSize);
  imageMode(CENTER);
  if (beachBallOn==true) {
    image(beachBall, x, y, targetSize-(0.02*targetSize), targetSize-(0.02*targetSize));
  } else if (bottleOn==true) {
    image(bottle, x, y, targetSize-(0.25*targetSize), targetSize-(0.25*targetSize));
  } else if (bubbleOn==true) {
    image(bubble, x, y, targetSize-(0.02*targetSize), targetSize-(0.02*targetSize));
  } else if (jellyFishOn==true) {
    image(jellyFish, x, y, targetSize-(0.02*targetSize), targetSize-(0.02*targetSize));
  }



  targetSize=map(sliderY, 200, 500, 75, 250);
  d=targetSize;
  fill(black);
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
  tactileSquare(50, 100, 50, 100);
  rect(50, 50, 50, 50, 10);
  stroke(grey);
  line(70, 60, 70, 90);
  line(80, 60, 80, 90);
}


void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<targetSize/2) {
    score=score+1;
    coin.rewind();
    coin.play();
    d=targetSize;
    if (vx<0) {
      vx=vx-0.6;
    } else {
      vx=vx+0.6;
    }
    if (vy<0) {
      vy=vy-0.6;
    } else {
      vy=vy+0.6;
    }
    x=random(r+10, width-r-10);
    y=random(r, height-r);
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
    bump.rewind();
    bump.play();
    lives=lives-1;
    if (lives == 0)  mode= GAMEOVER;
  }
}
