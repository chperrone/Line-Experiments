float t;
int x;
int NUM_LINES = 10;

void setup() {
  background(20);
  size(500, 500);
}

void draw() {
  background(20);
  
  strokeWeight(2);
  
  translate(width/2, height/2);
  
  for (int i = 0; i < NUM_LINES; i++) {
    stroke(col(x + i));
    x += 1;
    print(x);
    print("\n");
    
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }
  t += .5;
}

int col(int t) {
  return round(sin(t/ 20) * 255);
}

float r(int t) {
  return sin(t / 1) * 255;
}

float g(int t) {
  return sin(t / 20) * 255;
}

float b(int t, int f, int a) {
  return sin(t/20) * a;
}

float x1(float t) {
  return sin(t /10) * 200;
}

float y1(float t) {
  return cos(t / 10) * 100;
}

float x2(float t) {
  return sin(t / 50) * 100 + cos(t / 15) * 30;
}

float y2(float t) {
  return sin(t / 10) * 100;
}