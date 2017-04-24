public class Spiral {
  float startX;
  float startY;
  float x;
  float y;
  
  Spiral(float tempStartX, float tempStartY) {
    startX = tempStartX;
    startY = tempStartY;
    x = tempStartX;
    y = tempStartY;
  }
  
  //x is the starting point on x axis
  public void drawThis() {
    //colors
    strokeWeight(3);
    stroke(255, 30, 30);
    
    //
    for (int i = 0; i <= NUM_POINTS; i++) {
      newX(t + i);
      newY(t + i);
      
      //reset the position of the spiral
      //on every cycle
      if (i == NUM_POINTS) {
        float new_height = height + SCREEN_BUFFERS;
        
        if (this.y > new_height - 1 && this.y < new_height) {
          this.startX = random(width);
        }
      }
      point(this.x, this.y);
    }
  }
  
  // take a time t and calculates that point's x value
  void newX(float t) {
    float x = sin(t / 2) * 10;
    this.x = x + this.startX;
  }

  void newY(float t) {
    if (dev_mode) {
      this.y = (t + startY) % (height + SCREEN_BUFFERS);
    } else this.y = (t - startY) % (height + SCREEN_BUFFERS);
    //if this value equals height - 1
    //randomize startX
  }
}