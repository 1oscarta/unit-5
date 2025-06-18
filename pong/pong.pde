

int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;

float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float vx, vy;

int leftscore, rightscore, point, a;

float timer, timerp;

boolean wkey, skey, upkey, downkey, ekey, st, ai;

void setup() {
  size(800, 600);
  mode = INTRO; //GAME;

  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  ballx = width/2;
  bally = height/2;
  balld = 75;

  wkey = skey = upkey = downkey = st = ekey = false;

  vx = 0;
  vy = 0;
  a = (int)random(1, 3);
  if (a == 1) vx = 5;
  if (a == 2) vx = -5;
  point = 1;
  timerp = 0;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

void mouseReleased () {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (key == 'e' || key =='E') {
    ekey = true;
    if (mode == PAUSE) {
    mode = GAME;
    ekey = false;
  }
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (mode == GAME) {
    mode = GAME;
    ekey = false;
  }
}
