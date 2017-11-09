int x;
int y;
Mover m1;
void setup(){
  size(600, 600);
  x = width/2;
  y = height/2;
  m1 = new Mover('w', 's', x, y);
}

void draw(){
  background(0);
  x = width/2;
  m1.update();
  //rect(width/2, height/2, 5, 100);
}
  void keyPressed(){
    m1.make();
    if(key == 'w') { 
      m1.y -= 10;
    }
  }
public class Mover {
  public int y;
  public int x;
  private char up;
  private char down;
  public final int rectLength = 100;
  public final int rectWidth = 5;
  public Mover(char keyup, char keydown, int x, int y) {
    up = keyup;
    down = keydown;
    this.x = x;
    this.y = y;
  }
  public void update() {
    this.make();
    /*if(key == up){
      println(key);
      y -= 10;
      key = ' ';
    } else if(key == down) { 
      y += 10;
      key = ' ';
    }*/
  }
  
  public void make() {
    rectMode(CENTER);
    rect(x, y, rectWidth, rectLength);
  }
}