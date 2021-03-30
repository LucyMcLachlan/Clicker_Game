void intro() {
  music.play();
  background(lightBlue);
  
  fill(darkBlue);
  textSize(50);
  text("Clicking by the Seaside", 400,350);// wanted it to sound like chilling by the seaside
  strokeWeight(2);
  fill(white);
  tactileRect(300,500,500,580);
  rect(300, 500, 200, 80, 10);
  fill(black);
  textSize(30);
  text("START", 400, 540);

  fill(white);
tactileRect(300,500,600,680);
  rect(300, 600, 200, 80, 10);
  fill(black);
  text("OPTIONS", 400, 640);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 580) {
    mode = GAME; 
    d=targetSize;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 680) {
    mode = OPTIONS;
  }
}
