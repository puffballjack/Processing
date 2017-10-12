import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Fractals extends PApplet {

public void setup()
{
  
  ellipseMode(CENTER);
}

public void draw()
{
  background(0);
  stroke(255);
  noFill();

  drawCircle(width/2, height/2, 400);
  //drawSquare(width/2, height/2, 400);
}

public void drawCircle(float x, float y, float d)
{
  ellipse(x, y, d, d);
  if(d > 6)
  {
    drawCircle(x + d * .5f, y, d * .5f);
    drawCircle(x - d * .5f, y, d * .5f);
    drawCircle(x, y + d * .5f, d * .5f);
    drawCircle(x, y - d * .5f, d * .5f);
  }
}

public void drawSquare(float x, float y, float w)
{
  rect(x - w/2, y - w/2, w, w);
  if(w > 5)
  {
    drawSquare(x + w * .5f, y, (w + w)/3);
    drawSquare(x - w * .5f, y, w * .5f);
    drawSquare(x, y - w * .5f, w * .5f);
  }
}
  public void settings() {  size(1200, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Fractals" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
