void pause () {
  fill(0);
  stroke(0);
  rect(0,0,800,600);
  
  fill(255);
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  circle(ballx,bally,balld);
  textSize(150);
  text("PAUSE", 200,350);
  
  
}

void pauseClicks() {
  
}
