void game () {

  background(0);
  fill(255);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  float i;
  i = 1;



  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  //if (lefty >= 799) wkey = false;

  circle(ballx, bally, balld);

  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  textSize(50);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 550);
  timer = timer + .016;


  if (ballx <0) {
    rightscore = rightscore + 1;
    timerp = 3;
    balld = 75;
  }

  if (ballx > width) {
    leftscore = leftscore + 1;
    timerp = 3;
    balld = 75;
  }

  if (timerp > 0) {
    int k;
    ballx = width/2;
    bally = height/2;
    textSize(100);
    text(timerp, 275, 400);
    timerp = timerp - 0.016;
    timer = timer - 0.016;
    k = (int)random(0, 2);
    if (timerp <= 0) {
      if (k == 0) vx = -5;
      if (k == 1) vx = 5;
      if (k >= 1) vx = -5;
      vy = 0;
    }
  }

  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    point = point++;
  }

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    point = point++;
  }

  ballx = ballx + vx;
  bally = bally + vy;
  if (bally <= 0) vy = vy *-1;
  if (bally >= height) vy = vy *-1;


  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
    balld = balld - (balld/25);
    rightd = rightd - (rightd/50);
    leftd = leftd + (leftd/50);
  }

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
    balld = balld - (balld/25);
    leftd = leftd - (leftd/50);
    rightd = rightd + (rightd/50);
  }
  if (ai == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  }
  if (ai == true) {
    if (bally < width/2) righty = bally * 1.5;
    if (bally > width/2) {
      righty = bally / 1.5;
      if (righty <= width/2) righty = bally * 1.1;
    }
  }
  if (ekey == true) mode = PAUSE;
  if (leftscore == 10) mode = GAMEOVER;
  if (rightscore == 10) mode = GAMEOVER;
}

void gameClicks() {
}
