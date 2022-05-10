
//graphic display and mouse control ============================================

void game() {
  background(oceanBLU);  
  stroke(blue);
  strokeWeight(1);
  
  //paddle ===============================================================
  fill(white); //draw paddle
  circle(px,py,pd);
  if (akey && px > 0) px = px - 5;//go left
  if (px <= 0) px = pd/2;
  if (dkey && px < width) px = px + 5; //go right
  if (px >= width) px = width-pd/2;
  //ball =================================================================
  fill(wine);
  stroke(darkBlue);
  circle(bx, by, bd);
  bx = bx + vx;
  by = by + vy;
  //bouncing =============================================================
  if (dist(bx, by, px, py) < bd/2 + pd/2) { //ball bounce off paddle
    vx = (bx - px)/10;
    vy = (by - py)/10;
  }
  
  if (by < bd/2 || by > height-bd/2) { //bounce off the top
    vy = vy * -1;  
  }
  if (bx < bd/2 || bx > width-bd/2) { //bounce off the side
    vx = vx * -1;
  }
  //bricks ================================================================
  fill(lightGR); 
  int i = 0;
  while (i < brickN) {
    circle(brickX[i],brickY[i],brickd); 
    
    if (dist(bx, by, brickX[i], brickY[i]) < bd/2 + brickd/2) { //hitting a brick
      vx = (bx - brickX[i])/5; //bounce
      vy = (by - brickY[i])/5; //bounce
      
      //removing brick -------------------------------------
      brickX.remove(i); 
      brickY.remove(i);
    }
    
    i = i + 1;
  }
 
}

void gameClick() {
  
}

//other functions ===============================================================
