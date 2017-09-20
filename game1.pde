void setup()
{
  size(500,500);
  noStroke();
  noCursor();
}
float x;
float y;
float dim = 40.0;
void draw()
{
  background(0,0,0);
  y = y + 0.8;
  if(y > height + dim)
  {
    y = -dim;
  }
  translate(y, height/2-dim/2);
  fill(255,255,255);
  triangle(-dim+6, -dim, -dim-5, -dim+1, -dim/2, -dim);
  
  //stroke(255,255,255);
  //triangle(40, 400, 60, 350, 80, 350);
  //fill(255,255,255);
  rect(mouseX, 470, 50, 20);
  fill(255,255,255);
}