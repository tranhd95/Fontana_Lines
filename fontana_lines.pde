ArrayList<Line> lines = new ArrayList();
ArrayList<Line> lines_small = new ArrayList();

void setup() {
  size(1024, 4800);
  background(255);
  stroke(0);
  strokeWeight(90);
  for (int i = 0; i < 80; i++) {
    Line l = new Line(90);
    lines.add(l);
  }
  for (int i = 0; i < 80; i++) {
    Line l = new Line(20);
    lines_small.add(l);
  }
}

float _time = 0;
float OFFSET_SIZE = 230;

void draw() {
  background(255);
  for (int i = 0; i < lines.size(); i++) {
    lines.get(i).display((i+1)*220);
  }
  noiseSeed((long)random(500));
  lines.clear();
  for (int i = 0; i < 80; i++) {
    Line l = new Line(90);
    lines.add(l);
  }
  _time += 0.01;
  saveFrame("images/fontana-###.png");
}

void noiseLine(float y) {
  float x = 0;
  beginShape();
  while (x < width) {
    float offsetNoise = noise(x/200, _time);
    float offset = map(offsetNoise, 0, 1, -OFFSET_SIZE, OFFSET_SIZE);
    curveVertex(x, y + offset);
    x++;
  }
  endShape();
}

void mouseClicked() {
  background(255);
  noiseSeed((long)random(500));
  lines.clear();
  for (int i = 0; i < 5; i++) {
    Line l = new Line(random(10));
    lines.add(l);
  }
  redraw();
}