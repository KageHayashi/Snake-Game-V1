final static int windowsize = 600;
final static int scale = 20;
snake x = new snake();
food food = new food();
int cols = windowsize/scale;
int rows = windowsize/scale;

void setup() {
  rectMode(CENTER);
  size(600,600);
}

void draw() {
  frameRate(10);
  background(0);
  if (x.eat(food)) 
    food.randomize();
  x.death();
  x.update();
  x.show();
  food.display();
}

void keyPressed() {
  if (key == 'w') {
    x.changeDir(0,-1);
  }
  if (key == 'a') {
    x.changeDir(-1,0);
  }
  if (key == 's') {
    x.changeDir(0,1);
  }
  if (key == 'd') {
    x.changeDir(1,0);
  }
}
