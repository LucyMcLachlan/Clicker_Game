void mouseReleased(){
 if (mode == INTRO) {
    introClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else  if (mode == GAMEOVER) {
    gameOverClicks();
  } else if(mode == OPTIONS){
    optionClicks();
  }
  
}

void mouseDragged(){
  if(mode== OPTIONS){optDragged();}
}
