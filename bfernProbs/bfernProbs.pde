void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  for (int i =0; i<1000; i++) {
    getrand();
  }
}

void getrand() {
  float r = random(1);

  if (r<0.01) {      // p = 0.01 percent
    stroke(255, 0, 0);
    point((r*width)+1, random(height));
  } else if (r<0.86) { // p = 0.85 percent  so + 0.01 
    stroke(0, 255, 0);
    point((r*width), random(height));
  } else if (r<0.93) { // p = 0.7 percent so + 86
    stroke(0, 0, 255);
    point((r*width), random(height));
  }
    else if (r>0.93) {  // p = 0.7 the last seven so greater than 93
    stroke(255, 0, 255);
    point((r*width), random(height));
  }

}
