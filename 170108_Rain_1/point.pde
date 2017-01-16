class Point {

  float x;
  float y;
  float yspeed;
  float yleng;
  
  Point() {

    x = random(-height, height);
    y = random(-width, width);
    yspeed = 10;
  }
  
  void update() {
  
  //Move down
    y = y + yspeed;
    
  //Regen
    if(y > 500) {
      x = random(-height, height);
      y = random(-width, width);
      yleng = random(3, 15);
    }
    
        
  }

  void show() {
    if(y <= 480) {
      stroke(255);
      line(x, y, x, y + yleng);
    }
    if(y > 470) {
      int ripple = Math.round(random(1, 3));
      int i = ripple*10;
      int j = ripple*2;
      noFill();
      stroke(255);
      ellipse(x, y, i, j);

    }
    
  }
    
  
  
}