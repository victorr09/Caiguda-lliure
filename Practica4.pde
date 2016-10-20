color c = color(0);
float x = 0;
float y = 100;
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

void move(){ //Esta parte del código cambia las coordenadas del rectángulo.
  
  x = x + xspeed;
  if ((x > width-30) || (x < 0)) {
  xspeed = xspeed * (-1);
  }

  y = y + yspeed; yspeed = yspeed + 0.3; //Esta parte del código es lo que hace que el rectángulo acelere.
  if ((y > height-10) || (y < 0)) {
  yspeed = yspeed * (-1);
}   



void display() { //El rectángulo se genera donde las coordenadas indican y se pinta de el color escojido en la variable.
  fill(c);
  rect(x,y,30,10);
}