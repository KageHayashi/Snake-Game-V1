class snake {
  int x, y, x_vel, y_vel;
  int total = 0;
  ArrayList<PVector> tail = new ArrayList<PVector>();
  snake() {
    x = windowsize/2;
    y = windowsize/2;
  }
  public void show() {
    fill(255);
    for (PVector v : tail) {
      rect(v.x, v.y, scale, scale);
    }
    rect(x, y, scale, scale);
  }
  public void changeDir(int x, int y) {
    x_vel = x;
    y_vel = y;
  }
  public void update() {
    if (total > 0) {
      if (total == tail.size() && !tail.isEmpty()) {
        tail.remove(0);
      }
      tail.add(new PVector(x, y));
    }

    x = x + x_vel*scale;
    y = y + y_vel*scale;

    x = constrain(x, 0, width-scale);
    y = constrain(y, 0, height-scale);
  }
  public boolean eat(food food) {
    if (x == food.x && y == food.y) {
      total ++;
      return true;
    }
    else 
      return false;
  }
  public void death() {
    for (int i = 0; i < tail.size(); i++) {
      PVector pos = tail.get(i);
      float d = dist(x, y, pos.x, pos.y);
      if (d < 1) {
        println("game over");
        total = 0;
        tail.clear();
      }
    }
  }
  
}
