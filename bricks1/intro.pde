
//graphic display and mouse control ==============================================

void intro() {
  strokeWeight(3);
  background(darkBlue);
  
  //logo
  if (frameCount % 10 == 0) writing("breakout",red,132,width/2,height/3);
  else writing("breakout",wine,128,width/2,height/3);
  
  //mode --> GAME
  button("PLAY",width/2,height*0.7,250,150,40);
  
}

void introClick() {
  //mode --> GAME
  if (mouseX > width/2-125 && mouseX < width/2+125 && mouseY > height*0.7-75 && mouseY < height*0.7+75) {
    mode = GAME;
  }
}
