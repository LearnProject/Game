class Board
{
  boolean[][] current;
  boolean[][] next;
  
  int size;
  
  float cellSize;
  
  Board(int size)
  {
    this.size = size;
    current = new boolean[size][size];
    next = new boolean[size][size];
    cellSize = width / size;
    randomise();
  }
  void render()
  {
    for(int row = 0; row<size;row++)
    {
      for(int col = 0; col < size; col ++)
      {
        if(current[row][col])
        {
          fill(0,255,0);
        }
        else
        {
          fill(0);
        }
        float x = map(col, 0, size,0, width);
        float y = map(row, 0, size, 0, height);
        rect(x, y, cellSize - 1, cellSize - 1);
      }
    }
  }
  void randomise()
  {
    for(int row = 0; row<size;row++)
    {
      for(int col = 0; col < size; col ++)
      {
        int dice = (int) random(0,2);
        /*if (dice == 1)
        {
          current[row][col] = true;
          
        }*/
        current[row][col] = (dice == 1);
      }
    }
  }
}