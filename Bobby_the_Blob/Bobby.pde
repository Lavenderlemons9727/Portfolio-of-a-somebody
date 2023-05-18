class Bobby {
  int x, y;
  PImage bobby;


  Bobby() {
    x = width/2;
    y = height/2;
    bobby = loadImage("bobby.png");
  }

  void display() {
    imageMode(CENTER);
    bobby.resize(100, 100);
    image (bobby, x, y);
  }

  void move(char dir) {
    if (dir == 'w') {
      y = y - 90;
    } else if (dir == 'a') {
      x = x - 90;
    } else if (dir == 's') {
      y = y + 90;
    } else if (dir == 'd') {
      x = x + 90;
    }
  }
}
