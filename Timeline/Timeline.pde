// Serenity Kunz | April 6, 2023 | Timeline


void setup() {
  size(950, 400);
}

void draw() {
  background(#C1B5D3);
  drawRef();
  histEvent(129, 300, "1564", false, "Born in Stratford-upon-Avon, United Kingdom");
  histEvent(336, 200, "1578", true, "Shakespeare's 'Lost Years' \n Years between him leaving school and getting married");
  histEvent(420, 300, "11/28/1582", false, "Gets married to Anne Hathaway");
  histEvent(440, 200, "1583", true, "First Daughter, Susanna is born");
  histEvent(600, 200, "1592", true, "Writes his first work,'Venus and Adonis'");
  histEvent(640, 300, "1594", false, "Becomes founding member, playwright, and actor for The Lord Chamberlain's Men, (changed later to The King's Men later)");
  histEvent(775, 200, "1613", true, "Writes final play 'Two Noble Kinsmen' then retires");
  histEvent(830, 300, "1616", false, "Dies in Stratford-upon-Avon, United Kingdom");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(255);
  text("William Shakespeare Timeline", width/2, 65 );
  textSize(20);
  text("By Serenity Kunz", width/2, 95 );
  strokeWeight(2);
  line(50, 250, 900, 250);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  line(220, 245, 220, 255);
  line(390, 245, 390, 255);
  line(560, 245, 560, 255);
  line(730, 245, 730, 255);
  textSize(15);
  text("1560", 50, 270);
  text("1570", 220, 270);
  text("1580", 390, 270);
  text("1590", 560, 270);
  text("1610", 730, 270);
  text("1620", 900, 270);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-0, y+50);
  } else {
    line(x, y, x-0, y-50);
  }
  rectMode(CENTER);
  fill(222);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    if (top) {
      text(detail, width/2, 140);
    } else {
      text(detail, width/2, 360);
    }
  }
}
