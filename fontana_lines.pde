void setup() {
  size(1024, 720);
  background(255);
}

float _x = 0;

void draw() {
  
  beginShape();
  while (_x < width) {
    float offset = 0;
    
    if (_x % 5 == 0) {
      offset = random(-10, 10);
    }
    
    curveVertex(_x, height/2 + offset);
    _x++;
  }
  endShape();
  
}