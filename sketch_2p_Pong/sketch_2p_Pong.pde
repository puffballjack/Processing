int x1;
int x2;
int y;
Mover m1;
Mover m2;
Ball b1;
void setup(){
  size(600, 600);
  x1 = 20;
  x2 = width -20;
  y = height/2;
  m1 = new Mover('w', 's', x1, y);
  m2 = new Mover('i', 'k', x2, y);
  b1 = new Ball();
}

void draw(){
  background(255);
  line(0, 0 , 0 , height);
  line(0, 0, width, 0);
  line(width - 1, 0, width - 1, height);
  line(0, height-1, width, height-1);
  //x = width/2;
  m1.update();
  m2.update();
  b1.update();
  b1.checkCollision(m1);
  b1.checkCollision(m2);
  //rect(width/2, height/2, 5, 100);
}

public class Ball {
  public PVector pos;
  public PVector vel;
  public PVector acc;
  public final int radius = 10;
  
  public Ball() {
    pos = new PVector(width/2 , height / 2);
    vel = new PVector(random(1), random(1));
    acc = new PVector(.001, .001);
  }
  
  public void update() {
    vel.add(acc);
    pos.add(vel);
    vel.limit(10);
    this.checkWallCollision();
    ellipse(pos.x, pos.y, radius, radius);
  }
  
  public void checkWallCollision(){
    if((pos.x + radius) > width || (pos.x - radius) < 0) {
      vel.x *= -1;
      acc.x *= -1;
    }
    if((pos.y + radius) > height || (pos.y - radius) < 0) {
      vel.y *= -1;
      acc.y *= -1;
    }
  }
  
  public void checkCollision(Mover other) {
    if((pos.y + radius) > other.y || (pos.y - radius) < other.y) {
      vel.y *= -1;
      acc.y *= -1;
    }
  }
}

public class Mover {
  public int y;
  public int x;
  private char up;
  private char down;
  public final int rectLength = 100;
  public final int rectWidth = 5;
  public final int speed = 10;
  public boolean upPressed;
  public boolean downPressed;
  public Mover(char keyup, char keydown, int x, int y) {
    up = keyup;
    down = keydown;
    this.x = x;
    this.y = y;
  }
  
  public void update() {
    /*if(y + rectLength/2 >= height) {
      y = height - rectLength / 2;
    } else if(y - rectLength/2 < 0) {
      y = rectLength / 2;
    }*/
    
    if(upPressed && y - rectLength/2 > 0){
      y -= speed;
    }
    if(downPressed && y + rectLength/2 < height - 1){ 
      y += speed;
    }    
    rectMode(CENTER);
    rect(x, y, rectWidth, rectLength);
  }
  
}

void keyPressed() {
    if(key == m1.up) {
      m1.upPressed = true;
    }else if(key == m1.down) {
      m1.downPressed = true;
    }
    
    if(key == m2.up) {
      m2.upPressed = true;
    }else if(key == m2.down) {
      m2.downPressed = true;
    }
  }
  
  void keyReleased() {
    if(key == m1.up) {
      m1.upPressed = false;
    }else if(key == m1.down) {
      m1.downPressed = false;
    }
    
    if(key == m2.up) {
      m2.upPressed = false;
    }else if(key == m2.down) {
      m2.downPressed = false;
    }
  }