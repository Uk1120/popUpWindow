class PUW {
  int x, y;
  int winSize;
  int textSize = 15;
  ArrayList<String> texts;

  boolean clicked;

  PUW(int ix, int iy, int ws) {
    x = ix;
    y = iy;
    winSize = ws;
    texts = new ArrayList();
  }

  void update() {
  }

  void display() {
    if (clicked) {
      rectMode(CORNER);
      pushMatrix();
      translate(mouseX, mouseY);
      fill(255);
      rect(0, 0, winSize, winSize);
      fill(#A6B2D3);
      rect(0, 0, winSize, winSize/10);
      fill(0);
      textMode(CORNER);
      textSize(textSize);
      for(int i = 0; i < texts.size(); i++){
      text(texts.get(i), 5, winSize/10 + textSize + textSize*i);
      }
      popMatrix();
    } else {
      noStroke();
    }
  }

  void popText(String text_) {
    texts.add(text_);
  }
  
  void triggerRect(int trRecX, int trRecY, int trRecSizeX, int trRecSizeY) {
    rectMode(CORNER);
    if (mouseX >= trRecX && mouseX <= trRecX+trRecSizeX && mouseY >= trRecY && mouseY <= trRecY+trRecSizeY) {
      noCursor();
      fill(100, 100, 100, 50);
      rect(trRecX, trRecY, trRecSizeX, trRecSizeY);
      if (mousePressed == true) {
        clicked = true;
      }
    } else {
      cursor();
      clicked = false;
    }
  }
}
