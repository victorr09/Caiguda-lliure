color c = color(0);
float x = 0;
float y = 100;
float speed = 1;

void setup() {
  size(600,800);
}

void draw() {
  background(255);
  move();
  display();
}

void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
  
  y = y + speed; speed = speed * 1.01;
  if (y > width) {
    y = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}