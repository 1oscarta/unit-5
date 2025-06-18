void intro () {
  fill(0);
  stroke(0);
  rect(0,0,800,600);
  int c;
  
  fill(255);
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  circle(ballx,bally,balld);
    ballx = ballx + vx;
  bally = bally + vy;
  
  c = 0;
    
  if (ballx <= 0) vx = vx * -1;
  if (ballx >= width) vx = vx *-1;
  if (bally <= 0) vy = vy * -1;
  if (bally >= height) vy = vy *-1;
  
  
  textSize(200);
  fill(255);
  text("Pong",200,300);
  player1(100,400);
  player2(475,400);
   if (dist(leftx,lefty,ballx,bally) <= leftd/2 + balld/2)  {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }
  
  if (dist(rightx,righty,ballx,bally) <= rightd/2 + balld/2)  {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }
  
}

void player1 (int x, int y) {
  pushMatrix();
  translate(x,y);
  fill(255);
  stroke(0,255,255);
  strokeWeight(5);
  rect(0,0,225,125);
  fill(0);
  textSize(60);
  text("1-player",10,75);
  
  //if ( mouseX > 0 && mouseX < 225 && mouseY > 0 && mouseY ) {
    
  //}
  
  popMatrix();
}

void player2 (int x, int y) {
  pushMatrix();
  translate(x,y);
  fill(255);
  stroke(0,255,255);
  strokeWeight(5);
  rect(0,0,225,125);
  fill(0);
  textSize(60);
  text("2-player",10,75);
  
  popMatrix();
}

void introClicks() {
  if (mouseX > 100 && 325 > mouseX && mouseY > 400 && mouseY < 525) {
    mode = GAME; 
    ballx = width/2;
    bally = height/2;
    balld = 75;
    ai = true;
  }
  if (mouseX > 475 && 700 > mouseX && mouseY > 400 && mouseY < 525) {
    mode = GAME; 
    ballx = width/2;
    bally = height/2;
    balld = 75;
    ai = false;
  }
  
}
