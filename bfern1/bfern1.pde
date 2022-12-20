float x=0;
float y=0;


void setup() {
  size(800, 800);
  background(0);
  
}

void draw() {
  for (int i =0; i<1000; i++) {
    getNext();
    drawdot();
  }
}


void drawdot(){
  float px = map(x,-2.182,2.6558, 0,width);
  float py = map(y,0,9.9983,height,0);
  point(px,py);
  
  
  
}

void getNext() {
  float r = random(1);
  float nextX =0;
  float nextY =0;

  if (r<0.01) {      // p = 0.01 percent
    stroke(255, 0, 0);
    nextX = 0;
    nextY = 0.16 *y;
  } else if (r<0.86) { // p = 0.85 percent  so + 0.01 
    stroke(0, 255, 0);
    nextX = 0.85 *x + 0.04 *y;
    nextY = -0.04 *x +0.85 *y+1.6;
  } else if (r<0.93) { // p = 0.7 percent so + 86
    stroke(0, 0, 255);
    nextX = 0.2 *x - 0.26 *y;
    nextY = 0.23 *x +0.22 *y +1.6;
  }
    else if (r>0.93) {  // p = 0.7 the last seven so greater than 93
    stroke(255, 0, 255);
    nextX = -0.15 *x +0.28 *y;
    nextY = 0.26 *x +0.24*y +0.44;
  }
  
  x= nextX;
  y= nextY;
 

}
