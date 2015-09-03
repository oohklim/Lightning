int startX = (int)(Math.random() * 501);
int startY = 0;
int endX;
int endY;
int a = 1;

void setup()
{
  size(500,500);
  background(0);
  frameRate(500);
  fill(124, 200, 250, 300);
}

void draw()
{
  lightning();
}

void lightning()
{
     strokeWeight((int)(Math.random()*2) + 1);
     //color
     if(a == 1)
     {
       stroke(124, 200, 250);
     }
     else
     {
       stroke(214, 228, 238);
     }
     a = a * -1;
     
     endX = startX + (int)(Math.random() * 21) - 10;
     endY = startY + (int)(Math.random() * 11);
     line(startX, startY, endX, endY);
     startX = endX;
     startY = endY;
}

void mousePressed() 
 {
   startX = (int)(Math.random() * 501);
   startY = 0;
 }
 
void keyPressed()
{
  clear();
}
