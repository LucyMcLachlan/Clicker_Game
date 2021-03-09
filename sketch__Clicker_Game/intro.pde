void intro() {
  background(blue);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  textSize(30);
  text("START",400,540);
}

void introClicks() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 580){
      mode = GAME; 
  }
}
