public class Spiral {
  float startX; //placement x
  float startY; //placement y
  float x;      //x coord
  float y;      //y coord
  color c;      //color
  float phase;
  float speed;
  
  
  Spiral(float tempStartX, float tempStartY) {
    startX = tempStartX;
    startY = tempStartY;
    x = startX;
    y = startY;
    c = color(random(255), random(255), random(255));
    phase = random(10);
  }
  
  //x is the starting point on x axis
  public void drawThis() {
    
    //
    for (int i = 0; i <= NUM_POINTS; i++) {
      float time = t + i + phase;
      
      this.x = calcX(time, 2, 10);
      this.y = calcY(time, 2, 10);
      
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
  
 
  
  float calcX(float t, float freq, float amp) {
    float x = sin(t/2) * amp;
    //x = x + sin(t/4) * 20;
    x += this.startX;
    return x;
  }
  
  float calcY(float t, float freq, float amp) {
    float y = (t + startY);
    //y += ( + 2) * 100;
    return y % (height + SCREEN_BUFFERS);
  }
  
  color blink(color c, float t) {
    float interval = t % 10;
    if (interval < 10 && interval > 7) {
      return color(255, 255, 255);
    } else return c;
  }
}