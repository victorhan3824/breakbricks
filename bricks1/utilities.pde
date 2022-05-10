
//button short cuts ==================================================
void button(String function, float x, float y, float w, float h, int s) { 
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    fill(red);
    stroke(white);
  } else {
    fill(cream);
    stroke(black);
  }
  rect(x, y, w, h);
  fill(black);

  writing(function, black, s, x, y);
}

//making texts =======================================================
void writing(String message, color c, int size, float x, float y) {
  textSize(size);
  fill(c);
  text(message, x, y);
}

//mouse click ========================================================
void mouseReleased() {
  if (mode == INTRO) {
    introClick();
  } else if (mode == GAME) {
    gameClick();
  } else if (mode == PAUSE) {
    pauseClick();
  } else if (mode == OVER) {
    gameoverClick();
  }
}

//graphics ===========================================================
void draw() {
  textFont(themeFont);
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OVER) {
    gameover();
  }
}

//keyboard ===========================================================
void keyPressed() {
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
}

void keyReleased() {
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
}
