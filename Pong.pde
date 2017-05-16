int playerY = 0;
int PlayerPaddleEdge = 75;
float ballY = 250;
float ballX = 500;
float speed = 5;
int directionX = 1;
int directionY = 1;
int score = 0;
char y = 'Y';
char o = 'O';
char u ='U';
char r ='R';
char a ='A';
char l ='L';
char s = 'S';
char e = 'E';
char c = 'C';
char i = 'I';
char t = 'T';
char h = 'H';
char b = 'B';
char n = 'N';
char g = 'G';
char d= 'D';
void setup()
{
  size(1000, 500);          // setup

}

void draw()
{
  int PaddleEdgeTop = mouseY;
  int PaddleEdgeLow = mouseY - 150;
  
  if(ballY > 500)
  { 
    ballY = ballY - speed;
  }
   
  background(0, 0, 0);
  
  if( mouseY > 350)           // Player blocker 
  { 
    playerY = 350; 
  }
  else
  { 
    playerY = mouseY;
  }
      
  beginShape();          // paddle 1
  fill(255, 255, 255);
  rect(50, playerY, 25 , 150);
  endShape();
  
  beginShape();          // paddle 2 (robot)
  fill(255, 255, 255);
  rect(950, ballY - 75, 25 , 150);
  endShape();
  
  ballX += speed * directionX;   // Book Speed
  
  ballY += speed * directionY;  
  
  if (ballX > width - 50) 
  {
    directionX = -directionX;                // Flip direction
  } 
  if (directionX == random(-1 , 2)) 
  {
    ellipse(ballX, ballY, 20, 20);            // Face right
  } 
  else 
  {
    ellipse(ballX, ballY, 20, 20);            // Face left
  }

  ballY += speed * directionY;           // Book Speed Y

  if ((ballY > height ) || (ballY < 0)) 
  {
    directionY = -directionY;                // Flip direction Y
  } 
    else 
  {
    ellipse(ballX, ballY, 20, 20);            
  }
  if(ballX < 0)
  {
  ballX = 500;
  score = 0;
  }
  if((ballX < 70) && (ballY < PaddleEdgeTop) && (ballY > PaddleEdgeLow) )   //player paddle bounce
  {
  directionX = -directionX;
  score+=1;
  
  }
  int time = millis()/1000; 
  text("time:"+time,90,90);
  text(""+score, 90, 130);
  
  if ( score < 30)
  {
   text("Your Social Security Number Will Be logged If You Dont Score More",500, 250);  
  }
  if ( score > 30)
  {
   text("Your Safe For Now",500, 250);  
  }
 
  
  

  
  
  
  
  
  
  
  
  

}