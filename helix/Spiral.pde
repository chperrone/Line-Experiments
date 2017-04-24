public class Spiral {
  float startX;
  float startY;
  float x;
  float y;
  color c;
  float phase;
  
  Spiral(float tempStartX, float tempStartY) {
    startX = tempStartX;
    startY = tempStartY;
    x = tempStartX;
    y = tempStartY;
    c = color(random(255), random(255), random(255));
    phase = random(10);
  }
  
  //x is the starting point on x axis
  public void drawThis() {
    
    //
    for (int i = 0; i <= NUM_POINTS; i++) {
      newX(t + i + phase);
      newY(t + i + phase);
      
      //reset the position of the spiral
      //on every cycle
      if (i == NUM_POINTS) {
        float new_height = height + SCREEN_BUFFERS;
        
        if (this.y > new_height - 1 && this.y < new_height) {
          this.startX = random(width);
        }
      }
      
      strokeWeight(3);
      stroke(c);
      point(this.x, this.y);
      
      color newColor = color(red(c) + 200,
                             green(c) + 200,
                             blue(c) + 200);
      stroke(newColor);
      point(this.x, this.y + 8); 
    }
  }
  
  // take a time t and calculates that point's x value
  void newX(float t) {
    float x = calcX(t);
    this.x = x + this.startX;
  }

  void newY(float t) {
    this.y = calcY(t);
  }
  
  float calcX(float t) {
    return sin(t / 2) * 10; 
  }
  
  float calcY(float t) {
    if (dev_mode) {
      return (t + startY) % (height + SCREEN_BUFFERS);
    } else return (t - startY) % (height + SCREEN_BUFFERS);
  }
}