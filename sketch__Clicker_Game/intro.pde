void intro() {
  background(blue);
  fill(white);
  rect(300, 500, 200, 80,10);
  fill(black);
  textSize(30);
  text("START",400,540);
  
  fill(white);
   rect(300, 600, 200, 80,10);
  fill(black);
  text("OPTIONS",400,640);
}

void introClicks() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 580){
      mode = GAME; 
  }
  if(mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 680){
      mode = OPTIONS; 
  }
}
