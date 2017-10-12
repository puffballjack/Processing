int x = 0;
int y = 0;
int spacing = 30;
double probability = .5;

void setup()
{
  size(1200, 800);
  background(0);
}

void draw()
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
