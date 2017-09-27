int row = 20;
int grid_count_per_row = 20;
float grid_width, grid_height;

void setup()
{
  size(500, 500);
  grid_width = width / grid_count_per_row;
  grid_height = height / row;
}

void draw()
{
  color blue = color(0, 0, 128);
  color light_blue = color(0, 0, 255);
  color grid_color = light_blue;
  
  for (int i = 0; i < row; i++)
  {
    if (i % 2 == 0)
    {
      grid_color = light_blue;
    }
    else
    {
      grid_color = blue;
    }
    
    for (int j = 0; j < grid_count_per_row; ++j)
    {
      fill(grid_color);
      stroke(grid_color);
      
      rect(j * grid_width, i * grid_height, grid_width, grid_height);
      
      if (grid_color == blue)
      {
        grid_color = light_blue;
      }
      else
      {
        grid_color = blue;
      }
    }
  }
}