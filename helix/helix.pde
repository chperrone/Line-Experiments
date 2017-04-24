//Globals
float t;
int NUM_POINTS = 50;
int SCREEN_BUFFERS = 60;
boolean dev_mode = true;

//init list
Spiral[] spirals = new Spiral[20];

void setup() {
  size(720, 480);
  background(255);
  
  //build list of spirals
  for (int i = 0; i < spirals.length; i++) {
    spirals[i] = new Spiral(random(width), random(height));
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < spirals.length; i++) {
    spirals[i].drawThis();
  }
  
  //move time forward
  t += 0.5;
}