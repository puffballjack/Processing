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

public class tenPRINT extends PApplet {

int x = 0;
int y = 0;
int spacing = 30;
double probability = .5f;

public void setup()
{
  
  background(0);
}

public void draw()
{
  stroke(255);
  if(random(1) > probability)
  {
    line(x, y, x + spacing,  y + spacing);
  }
  else
  {
    line(x, y + spacing, x + spacing, y);
  }
  x += spacing;
  if(x > width)
  {
    x = 0;
    y += spacing;
  }
}
  public void settings() {  size(1200, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "tenPRINT" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
