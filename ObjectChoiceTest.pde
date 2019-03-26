int num = 300;
Walker[] Walker = new Walker[num];
Walker w;

void setup() {
  fullScreen(2);
  w = new Walker();
  background(0);
  strokeWeight(5);
  for (int i = 0; i < Walker.length; i++) {
    Walker[i] = new Walker();
  }
}

void draw() {
  noStroke();
  fill(0, 5);
  rect(0, 0, width, height);
  strokeWeight(5);
  //background(255,30);
  for (int i = 0; i < Walker.length; i++) {
    Walker[i].step();

    Walker[i].render();
  }
  //delay(50);
}
