void setup()
{
  size(1200, 800);
  ellipseMode(CENTER);
}

void draw()
{
  background(0);
  stroke(255);
  noFill();

  drawCircle(width/2, height/2, 400);
  //drawSquare(width/2, height/2, 400);
}

void drawCircle(float x, float y, float d)
{
  ellipse(x, y, d, d);
  if(d > 6)
  {
    drawCircle(x + d * .5, y, d * .5);
    drawCircle(x - d * .5, y, d * .5);
    drawCircle(x, y + d * .5, d * .5);
    drawCircle(x, y - d * .5, d * .5);
  }
}

void drawSquare(float x, float y, float w)
{
  rect(x - w/2, y - w/2, w, w);
  if(w > 5)
  {
    drawSquare(x + w * .5, y, (w + w)/3);
    drawSquare(x - w * .5, y, w * .5);
    drawSquare(x, y - w * .5, w * .5);
  }
}
