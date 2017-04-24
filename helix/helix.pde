float t;
int NUM_POINTS = 50;

//init list
Spiral[] spirals = new Spiral[10];

void setup() {
  background(20);
  size(800, 500);
  
  //build list of spirals
  for (int i = 0; i < spirals.length; i++) {
    spirals[i] = new Spiral(random(width));
  }
}

void draw() {
  background(20);
  
  for (int i = 0; i < spirals.length; i++) {
    spirals[i].drawThis();
  }
  
  //move time forward
  t += 1;
}