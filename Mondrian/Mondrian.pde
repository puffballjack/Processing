//Declare object
Mond m1 = new Mond();
int i;

color[] colors = {
color(244,228,9), color(245,100,22), color(23,137,252), color(208,0,0), color(255)
};

void setup()
{
  background(255, 255, 255);
  size(600, 600);
  strokeWeight(30);
}

void draw(){
  line(0, 6, width, 6);
  line(6, 0, 6, height);
  line(width-6, 0, width-6, height);
  line(0, height-6, width, height-6);
  m1.create();
  println(key);
}

class Mond {
  int sw, sh;
  Mond (){}
  void create(){
    float x, y, x1, y1;
    int c1, c2, c3, c4;
    while(i < 1){
      x = random(1, width);
      y = random(1, height);
      //x1 = random(1, width);
      //y1 = random(1, height);
      c1 = int(random(0, 5));
      c2 = int(random(0, 5));
      c3 = int(random(0, 5));
      c4 = int(random(0, 5));
      line(0, y, width, y);
      line(x, 0, x, height);
      //line(0, y1, width, y1);
      //line(x1, 0, x1, height);
      fill(colors[c1]);
      rect(x, y, -x, y);
      fill(colors[c2]);
      rect(x, y, 100, 100);
      fill(colors[c3]);
      rect(x, y, 100, -100);
      fill(colors[c4]);
      rect(x, y, -100, -100);
      println(i);
      i += 1;
    }
  }
}

void keyPressed(){
  if(key == 'a'){
    Mond m1 = new Mond();
    m1.create();
    key = ' ';
  }
}