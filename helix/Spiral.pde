public class Spiral {
  float startX;
  float startY;
  float x;
  float y;
  
  Spiral(float tempStartX) {
    startX = tempStartX;
  }
  
  //x is the starting point on x axis
  public void drawThis() {
    strokeWeight(3);
    stroke(255, 30, 30);
    for (int i = 0; i < NUM_POINTS; i++) {
      point(newX(t + i) + startX, newY(t + i));
    }
  }
  
  // take a time t and calculates that point's x value
  float newX(float t) {
    return sin(t / 2) * 10;
  }

  float newY(float t) {
    return t;
  }
}