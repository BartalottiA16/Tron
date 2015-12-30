int x = 200;
int y = 150;
int compX = 200;
int compY = 151;
int compDir = DOWN;
boolean gameOver = false;
//int gameState = 0; //0 is start, 1 is play, 2 is gameOver
PImage endGame;
//PImage startImage;
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
  if (gameOver == true)
    //if(gameState == 2)
  {
    //endGame = loadImage("https://i.ytimg.com/vi/iZRG5k5dGp8/maxresdefault.jpg");
    //background?
    image(endGame, 400, 300);
  }
  //if (gameState == 0)

  //starting image
  //startImage = loadImage("data:image/jpeg;base64,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");
 

  // if (gameState == 1)
  if (gameOver == false)
  {
    human();
    //if (gameState == 1)
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
    image(endGame, 0, 0, 400, 300);
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
   // text("YOU WIN!", 200, 190);
    gameOver = true;
    image(endGame, 0, 0, 400, 300);
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
  // if (gameState == 0)
  background(0);
  //gameState = 1;
  //} else if (gameState == 2)
  // gameState = 1;
  reset();
}
