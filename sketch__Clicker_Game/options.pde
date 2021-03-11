void options() {
  background(white);
  fill(black);
  rect(50, 40, 50, 30);
  fill(white);
  textSize(15);
  text("BACK", 75, 55);

  line(75, 200, 75, 500);
  circle(75, sliderY, 20);
  
 targetSize=map(sliderY,200,500,75,250);
}

void optionClicks() {
  if (mouseX>50&&mouseX<100&&mouseY>40&&mouseY<70) mode=INTRO;

  if (mouseX>65&&mouseX<85&&mouseY>200&&mouseY<500) {
    sliderY=mouseY;
  }
}

void optDragged() {
  if (mouseX>65&&mouseX<85&&mouseY>200&&mouseY<500) {
    sliderY=mouseY;
  }
}
