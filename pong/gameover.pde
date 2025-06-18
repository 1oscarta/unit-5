void gameover () {
  fill(0);
  rect(-1, -1, 801, 601);
  fill(255);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  textSize(75);
  if (leftscore == 10) text("left side wins", 150, 250);
  if (rightscore == 10) text("right side wins", 150, 250);
  text("play again?", 200 ,325);
  
  //player1
  fill(255);
  stroke(0,255,255);
  strokeWeight(5);
  rect(100,400,225,125);
  fill(0);
  textSize(60);
  text("1-player",110,475);
  
  //player2
    fill(255);
  stroke(0,255,255);
  strokeWeight(5);
  rect(475,400,225,125);
  fill(0);
  textSize(60);
  text("2-player",485,475);

}


void gameoverClicks() {
  if (mouseX > 100 && 325 > mouseX && mouseY > 400 && mouseY < 525) {
    mode = GAME; 
    ballx = width/2;
    bally = height/2;
    balld = 75;
    ai = true;
    leftscore = 0;
    rightscore = 0;
    timer = 0;
    rightd = leftd = 200;
  }
  if (mouseX > 475 && 700 > mouseX && mouseY > 400 && mouseY < 525) {
    mode = GAME; 
    ballx = width/2;
    bally = height/2;
    balld = 75;
    ai = false;
    leftscore = 0;
    rightscore = 0;
    timer = 0;
    rightd = leftd = 200;
  }
  
}
