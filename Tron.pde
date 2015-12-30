int x = 200;
int y = 150;
int compX = 200;
int compY = 151;
int compDir = DOWN;
boolean gameOver = false;
PImage endGame;
void setup()
{
  size(400, 300);
  frameRate(100);
  background(0);
  textAlign(CENTER);
  textSize(44);
  key = 'w';
  endGame = loadImage("https://i.ytimg.com/vi/iZRG5k5dGp8/maxresdefault.jpg");
}
void draw()
{
image(endGame, 400, 300);
  if (gameOver == false)
  {
    human();
    computer();
    border();
  }
}
void border()
{
  stroke(100);
  fill(100);
  rect(0, 0, 400, 10);
  rect(0, 0, 10, 300);
  rect(390, 0, 10, 400);
  rect(0, 290, 400, 10);
}
void human()
{
  if (get(x, y) != color(0))
  {
    fill(255, 0, 0);
    image(endGame, 0,0,400,300);
    //text("GAME OVER", 200, 150);
    //text("COMPUTER WINS", 200, 190);
    gameOver = true;
  }
  stroke(255);
  point(x, y);

  if (key == 'w')
  {
    y = y - 1;
  }
  if (key == 's')
  {
    y = y + 1;
  }
  if (key == 'd')
  {
    x = x + 1;
  }
  if (key == 'a')
  {
    x = x - 1;
  }
  //if (key == 'e')
  {
    y = y - 1;
    x = x + 1;
  }
  //if (key == 'q')
  {
    y = y - 1;
    x = x - 1;
  }
  //if (key == 'c')
  {
    y = y + 1;
    x = x + 1;
  }
  //if (key == 'z')
  {
    y = y + 1;
    x = x - 1;
  }
}
void computer()
{
  //check to see if computer died
  if (get(compX, compY) != color(0))
  {
    fill(255, 0, 0);
    //text("GAME OVER", 200, 150);
    //text("YOU WIN!", 200, 190);
    gameOver = true;
  }
  stroke(0, 255, 0);
  point(compX, compY);
  if (compDir == DOWN)
  {
    compY = compY +1;
    if (get(compX, compY+1) != color(0))
    {
      compDir = LEFT;
    }
  } else if (compDir == LEFT)
  {
    compX = compX - 1;
    if (get(compX-1, compY) != color(0))
    {
      compDir = UP;
    }
  } else if (compDir == UP)
  {
    compY = compY - 1;
    if (get(compX, compY-1) != color(0))
    {
      compDir = RIGHT;
    }
  } else if (compDir == RIGHT)
  {
    compX = compX + 1;
    if (get(compX + 1, compY) != color(0))
    {
      compDir = DOWN;
    }
  }
}
void reset()
{
  x = 200;
  y = 150;
  key = 'w';
  compX = 200;
  compY = 151;
  compDir = DOWN;
  gameOver = false;
  background(0);
  border();
}
void mouseClicked()
{
  reset();
}
  
