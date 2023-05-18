// Serenity Kunz | April 25 2023 | Bobby the Blob

boolean play;
Bobby b1;
Yarn y1, y2;
int score, level;
float yarn1Dist;


void setup() {
  size(500, 600);
  b1 = new Bobby();
  y1 = new Yarn();

  score = 0;
  level = 1;
  play = false;
 
}

void draw() {
  yarn1Dist =dist(b1.x, b1.y, y1.x, y1.y);
  println(yarn1Dist);
  if (!play) {
    startScreen();
  } else {
    background(128);
    drawBackground();
    infoPanel();
    y1.display();
    
    b1.display();
    if (b1.y> height || b1.x<0 || b1.x> width || b1.y < 0) {
      gameOver();
    } 
    if (yarn1Dist<50) {
      score = score + 10;
      //y1.x=int(random(400, 40));
          y1.x = int(random(width));
          y1.y = int(random(height));
    }
  }
}


void keyPressed() {
  if (key == 'w') {
    b1.move('w');
  } else if (key == 'a') {
    b1.move('a');
  } else if (key == 's') {
    b1.move('s');
  } else if (key == 'd') {
    b1.move('d');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
}

void startScreen() {
  background(0);
  fill(225);
  textAlign(CENTER);
  textSize(20);
  text("Bobby the Blob", width/2, 250);
  text("By Serenity Kunz", width/2, 280);
  text("press space bar to start", width/2, 310);
}

void gameOver() {
  background(0);
  fill(225);
  textAlign(CENTER);
  textSize(20);
  text("Game Over!", width/2, 250);
  text("Score: " + score, width/2, 270);
  noLoop();
}


void infoPanel() {
  fill(0, 128);
  rect(0, 0, width, 50);
  fill(225);
  textSize(10);
  text("Score: " + score, 20, 30);
  text("Collect as much yarn as you can without making speedy Bobby collide with the walls!", 300, 30);
}
