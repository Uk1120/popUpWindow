PUW puw;

int boxSizeX = 100;
int boxSizeY = 50;


void setup() {
  size(600, 600);
  puw = new PUW(0, 0, 200);
  
  puw.popText("this is a pop-up window");
  puw.popText("text lines 1");
  puw.popText("text lines 2");
  puw.popText("text lines 3");
}
void draw() {
  background(200);
  fill(0, 200, 200);
  //rect(width/2 - boxSizeX/2, height/2 - boxSizeY/2, boxSizeX, boxSizeY);
  puw.triggerRect(width/2 - boxSizeX/2, height/2 - boxSizeY/2, boxSizeX, boxSizeY);
  
  puw.display();
}
