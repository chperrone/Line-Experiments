public class Spiral {
  float startX;
  float startY;
  float x;
  float y;
  
  Spiral(float tempStartX) {
    startX = tempStartX;
    x = 0;
    y = 0;
  }
  
  //x is the starting point on x axis
  public void drawThis() {
    //colors
    strokeWeight(3);
    stroke(255, 30, 30);
    
    //
    for (int i = 0; i < NUM_POINTS; i++) {
      newX(t + i);
      newY(t + i);
      point(this.x + startX, this.y);
    }
  }
  
  // take a time t and calculates that point's x value
  void newX(float t) {
    this.x = sin(t / 2) * 10;
  }

  void newY(float t) {
    this.y = t % height;
  }
}