void tactileSquare(int x1, int x2, int y1, int y2) {
  if (mouseX>x1 && mouseX<x2&& mouseY>y1 && mouseY<y2) {
    stroke(grey);
  } else stroke(black);
}

void tactileCircle(float x,float y, float r){
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(grey);
  } else {
    stroke(black);
  }
}

void tactileRect(int x1, int x2, int y1, int y2) {
  if (mouseX>x1 && mouseX<x2&& mouseY>y1 && mouseY<y2) {
    stroke(darkBlue);
  } else stroke(grey);
}
