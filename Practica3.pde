color c = color(0);
float x = 0;
float y = 0;
float xspeed = 1;
float yspeed = 1;

void setup() {
  size(600,600);
}

void draw() {
  background(255);
  move();
  display();
}

void move() {
  x = x + xspeed;
  if (x > width) {
    x = 0;
  }
  
  y = y + yspeed; yspeed = yspeed * 1.005;
  if (y > width) {
    y = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}