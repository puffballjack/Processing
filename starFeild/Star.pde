public class Star {
  float x;
  float y;
  PVector pos;
  float z;
  
  float pz;
  
  public Star() {
    pos = new PVector(random(-width, width), random(-height, height));
    //x = random(-width, width);
    //y = random(-height, height);
    z = random(width);
    pz = z;
  }
  
  void update() {
    z -= speed;
    if(z < 1) {
      z = width;
      pos.x = random(-width, width);
      pos.y = random(-height, height);
      pz = z;
    }
  }
  
  void show() {
    fill(255);
    noStroke();
    PVector s = new PVector(map(pos.x / z, 0, 1, 0, width), map(pos.y / z, 0, 1, 0, height));
    //float sx = map(x / z, 0, 1, 0, width);
    //float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z, 0, width, 4, 0);
    ellipse(s.x, s.y, r, r);
    
    float px = map(pos.x / pz, 0, 1, 0, width);
    float py = map(pos.y / pz, 0, 1, 0, height);
    
    stroke(255);
    pz = z;
    line(px, py, s.x, s.y); 
  }
}