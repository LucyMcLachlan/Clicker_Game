void options() {
  background(white);
  stroke(black);
  strokeWeight(2);
  imageMode(CORNER);
  if (mouseX>50&&mouseX<100&&mouseY>40&&mouseY<70) {
    fill(white);
    rect(50, 40, 50, 30);
    fill(black);
    textSize(15);
    text("BACK", 75, 55);
  } else {
    fill(black);
    rect(50, 40, 50, 30);
    fill(white);
    textSize(15);
    text("BACK", 75, 55);
  }
  fill(white);
  tactileCircle(75, sliderY, 10);
  line(75, 200, 75, 500);
  circle(75, sliderY, 20);

  targetSize=map(sliderY, 200, 500, 75, 250);

  //beachBall button
  tactileSquare(300, 450, 100, 250);
  rect(300, 100, 150, 150, 10);
  image(beachBall, 310, 110, 130, 130);

  // jellyFish button
  tactileSquare(500, 650, 100, 250);
  rect(500, 100, 150, 150, 10);
  image(jellyFish, 510, 110, 130, 130);

  //bottle button
  tactileSquare(300, 550, 300, 450);
  rect(300, 300, 150, 150, 10);
  image(bottle, 310, 310, 130, 130);

  //bubble button
  tactileSquare(500, 650, 300, 450);
  rect(500, 300, 150, 150, 10);
  image(bubble, 510, 310, 130, 130);

  //target indicator
  stroke(blue);
  fill(white);
  strokeWeight(3);
  circle(475, 650, targetSize);
  imageMode(CENTER);
  if (beachBallOn==true) {
    image(beachBall, 475, 650, targetSize-(0.02*targetSize), targetSize-(0.02*targetSize));
  } else if (bottleOn==true) {
    image(bottle, 475, 650, targetSize-(0.25*targetSize), targetSize-(0.25*targetSize));
  } else if (bubbleOn==true) {
    image(bubble, 475, 650, targetSize-(0.02*targetSize), targetSize-(0.02*targetSize));
  } else if (jellyFishOn==true) {
    image(jellyFish, 475, 650, targetSize-(0.02*targetSize), targetSize-(0.02*targetSize));
  }
}

void optionClicks() {
  if (mouseX>50&&mouseX<100&&mouseY>40&&mouseY<70) mode=INTRO;

  if (mouseX>65&&mouseX<85&&mouseY>200&&mouseY<500) {
    sliderY=mouseY;
  }
  //beachBall button
  if (mouseX>300&&mouseX<450&&mouseY>100&&mouseY<250) {
    if (beachBallOn==false) {
      beachBallOn=true;
      bottleOn=false;
      bubbleOn=false;
      jellyFishOn=false;
    }
  }
  //bottle button
  if (mouseX>300&&mouseX<450&&mouseY>300&&mouseY<450) {
    if (bottleOn==false) {
      bottleOn=true;
      beachBallOn=false;
      bubbleOn=false;
      jellyFishOn=false;
    }
  }

  //jellyFish button
  if (mouseX>500&& mouseX<650&& mouseY>100&& mouseY< 250) {
    if (jellyFishOn==false) {
      jellyFishOn=true;
      bottleOn=false;
      beachBallOn=false;
      bubbleOn=false;
    }
  }

  //bubble buton
  if (mouseX>500&& mouseX<650&& mouseY>300&& mouseY< 450) {
    if (bubbleOn==false) {
      bubbleOn=true;
      jellyFishOn=false;
      bottleOn=false;
      beachBallOn=false;
    }
  }
  
    
  }

  void optDragged() {
    if (mouseX>65&&mouseX<85&&mouseY>200&&mouseY<500) {
      sliderY=mouseY;
    }
  }
