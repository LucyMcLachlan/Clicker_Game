void pause(){
strokeWeight(2);
tactileSquare(50,100,50,100);
  fill(white);
  rect(50, 50, 50, 50, 10);
   stroke(grey);
    fill(grey);
    triangle(70, 60, 70, 90, 80, 75);
}

void pauseClicks(){
if (mouseX>50&&mouseX<100&&mouseY>50&&mouseY<100 ) {
   strokeWeight(2);
  fill(white);
  rect(50, 50, 50, 50, 10);
  line(70, 60, 70, 90);
  line(80, 60, 80, 90);
    mode=GAME;}
}
