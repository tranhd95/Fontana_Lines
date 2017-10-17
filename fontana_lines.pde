void setup() {
  size(1024, 720);
  background(255);
  stroke(0);
  strokeWeight(20);
}

float _x = 1;
float _time = 0;
float OFFSET_SIZE = 130;

void draw() {
  background(255);
  beginShape();
  //while (_x < width) {
  //  float offsetNoise = noise(_x/200, _time);
  //  //println(offsetNoise);
  //  float offset = map(offsetNoise, 0, 1, -OFFSET_SIZE, OFFSET_SIZE);
  //  curveVertex(_x, height/2 + offset);
  //  _x++;
  //}

  for (int x = 0; x < width; x++) {
    float offsetNoise = noise(x/200, _time);
    //println(offsetNoise);
    float offset = map(offsetNoise, 0, 1, -OFFSET_SIZE, OFFSET_SIZE);
    curveVertex(x, height/2 + offset);
  }


  endShape();
  _x = 0;
  _time += 0.01;
}

//void noiseLine(float y) {
//}