void pause(){

}

void pauseClicks(){
if (mouseX>50&&mouseX<100&&mouseY>50&&mouseY<100 ) {
   strokeWeight(2);
  fill(white);
  rect(50, 50, 50, 50, 10);
  stroke(grey);
  line(70, 60, 70, 90);
  line(80, 60, 80, 90);
    mode=GAME;}
}
