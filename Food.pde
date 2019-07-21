class food {
  int x, y, cols, rows;
  food() {
   cols = windowsize/scale;
   rows = windowsize/scale;
   x = floor(random(cols)) * scale;
   y = floor(random(rows)) * scale;
  }
  public void display() {
    fill(255,0,0);
    rect(x, y, scale,scale);
  }
  public void randomize() {
   x = floor(random(cols)) * scale;
   y = floor(random(rows)) * scale;
  }
}
