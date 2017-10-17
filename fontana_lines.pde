void setup() {
  size(1024, 720);
  background(255);
  stroke(0);
  strokeWeight(9);
  frameRate(10);
}

float _x = 1;
float OFFSET_STEP = 17;
float OFFSET_WIDTH = 10;

void draw() {
  background(255);
  beginShape();
  while (_x < width) {
    float offset = 0;

    if (_x % OFFSET_STEP == 0) {
      offset = random(-60, 60);
      _x += OFFSET_WIDTH;
      curveVertex(_x, height/2 + offset);
      _x += OFFSET_WIDTH;
    } else {
      curveVertex(_x, height/2 + offset);
    }
    _x++;
  }
  curveVertex(width-1, height/2);
  curveVertex(width, height/2);
  endShape();
  _x = 0;
}