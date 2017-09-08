
// IMAGES
/*
right side of the screen is width. center is x/2; and y/2;
 Void keyPressed()--------- operation
 {
 background (random(255), random(255), random(255); to change bg color every time a key is pressed  
 }
 mouseX: to change the mouse position
 mouseY: to change the mouse position
 float: can do decimals when int can't.
 return: gives you an answer. Score like stuff.
 */
int x = 0;
int y =100;
int x2 = 0;
int y2 = 700;
int x3 = 0;
int y3 = 500;
int x4 = 0;
int y4 = 300;
PImage ganon;
PImage linky;
PImage zeld;
PImage dlink;
PImage vict;
boolean gameOver = false;
int HEALTH=4;
float[] hp=new float[HEALTH];
import processing.sound.*;
SoundFile file;
import processing.video.*;
Movie myMovie;

void setup ()
{
  fullScreen();
  linky =  loadImage("Link.png");
  ganon = loadImage("Ganondorf.png"); 
  zeld = loadImage("Zelda.png");
  dlink = loadImage ("Dark Link.png");
  file = new SoundFile(this, "Hyrule.mp3");
  file.play();
  file.amp(0.5);
  myMovie = new Movie(this, "Dragmire.mp4");
  myMovie.loop();

  for (int i=0; i<HEALTH; i++)
  {
    hp[i]=100;
  }
}

void draw ()
{
  background ((180), (75), (50));
  Collision();
  Link();
  Ganondorf();
  Zelda();
  DarkLink();
  fill(255, 51, 30);
  rect(x, y, hp[0], 5);

  fill(255, 51, 30);
  rect(x2, y2, hp[1], 5);

  fill(255, 51, 30);
  rect(x3, y3, hp[2], 5);

  fill(255, 51, 30);
  rect(x4, y4, hp[3], 5);

  if (gameOver==true)
  {
    image(vict, 0, 0, width, height);
  }
}






void Link()
{
  image(linky, x, y);
  x=x+10;
  if (x>2200)
  {
    x= -1000;
  }
}


void Ganondorf()
{
  image(ganon, x2, y2);
  x2=x2+10;
  if (x2>2200)
  {
    x2= -1000;
  }
}

void Zelda()
{
  image(zeld, x3, y3);
  x3=x3+10;
  if (x3>2200)
  {
    x3= -1000;
  }
}

void DarkLink()
{
  image(dlink, x4, y4);
  x4=x4+10;
  if (x4>2200)
  {
    x4= -1000;
  }
}





void Collision()
{
  if (x>2200)
  {
    x= -1000;
  }

  if (dist(x, y, x2, y2)<50)
  {

    hp[0]--;
    hp[1]--;
    if (hp[0]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }

    if (hp[1]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }
  }

  if (dist(x, y, x3, y3)<50)
  {

    hp[0]--;
    hp[2]--;
    if (hp[0]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }

    if (hp[2]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }
  }
  if (dist(x2, y2, x4, y4)<50)
  {

    hp[1]--;
    hp[3]--;

    if (hp[1]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }
  }
  if (dist(x2, y2, x3, y3)<50)
  {
    if (hp[3]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }

    hp[1]--;
    hp[2]--;

    if (hp[1]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }
  }
  if (hp[2]<1)
  {
    vict = loadImage ("victory.jpg");
    gameOver=true;
  }

  if (dist(x3, y3, x4, y4)<50)
  {

    hp[2]--;
    hp[3]--;

    if (hp[2]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }



    if (hp[3]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }
  }
  if (dist(x, y, x4, y4)<50)
  {
    for (int i=0; i<HEALTH; i++)
    {
      hp[0]--;
      hp[3]--;
    }
    if (hp[0]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }

    if (hp[3]<1)
    {
      vict = loadImage ("victory.jpg");
      gameOver=true;
    }
  }
}



void keyPressed()
{




  if (key =='w')
  {
    y = y -20;
  }

  if (key =='a')
  {
    x =x-20;
  }

  if (key =='s')
  {
    y = y +20;
  }

  if (key =='d')
  {
    x= x+20;
  }
  if (key =='t')
  {
    y2 = y2 -20;
  }

  if (key =='f')
  {
    x2 =x2-20;
  }

  if (key =='g')
  {
    y2 = y2 +20;
  }

  if (key =='h')
  {
    x2= x2+20;
  }
  if (key =='i')
  {
    y3 = y3 -20;
  }

  if (key =='j')
  {
    x3 =x3-20;
  }

  if (key =='k')
  {
    y3 = y3 +20;
  }

  if (key =='l')
  {
    x3= x3+20;
  }

  if (keyCode == UP)
  {
    y4 = y4 -20;
  }


  if (keyCode == DOWN)
  {

    y4 = y4 +20;
  }


  if (keyCode == LEFT)
  {
    x4 =x4-20;
  }
  if (keyCode == RIGHT)
  {
    x4= x4+20;
  }
}