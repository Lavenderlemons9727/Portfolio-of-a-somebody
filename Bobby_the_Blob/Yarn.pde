class Yarn {
  int x, y;
  PImage yarn;


  Yarn() {
    x = int(random(width));
    y = int(random(height));
    yarn = loadImage("yarn.png");
  }

  void display() {
    imageMode(CENTER);
    image (yarn, x, y);
    yarn.resize(90, 90);
  }
}
