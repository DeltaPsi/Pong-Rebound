class Puck {

  float x = width/2;
  float y = height/2;
  float xspeed;
  float yspeed;
  float r = 12;

  Puck() {
   reset();
  }

  void checkPaddleLeft(Paddle p) {
    if (y < p.y + p.h/2 && y > p.y - p.h/2 && x - r < p.x - p.w/2) {
      xspeed *= -1;
    }
  }
  
  
  void checkPaddleRight(Paddle p) {
    if (y < p.y + p.h/2 && y > p.y - p.h/2 && x + r > p.x - p.w/2) {
      xspeed *= -1;
    }
  }

  void update() {
    x = x + xspeed;
    y = y + yspeed;
  }

  void reset() {
    x = width/2;
    y = height/2;
     
    float angle = random(TWO_PI);
    xspeed = 5 * cos(angle);
    yspeed = 5 * sin(angle);
  }

  void edges() {
    if (y<0 || y>height) {
      yspeed *= -1;
    }
    if (x > width) {
      leftscore++;
      reset();
    }
    if (x<0) {
      rightscore++;
      reset();
    }
  }

  void show() {
    fill(255);
    ellipse(x, y, 24, 24);
  }
}