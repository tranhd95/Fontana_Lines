class Line {

  float y;

  Line(float y) {
    this.y = y;
  }

  void display(float a) {
    stroke(0);
    strokeWeight(random(30,180));
    float x = 0;
    beginShape();
    while (x < width) {
      float offsetNoise = noise(x/200, a/200, 1);
      float offset = map(offsetNoise, 0, 1, -OFFSET_SIZE, OFFSET_SIZE);
      curveVertex(x, a + offset);
      x++;
      //y += 0.001;
    }
    
    
    
    endShape();
  }
}