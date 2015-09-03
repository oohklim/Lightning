int startY;
int startX;
int endY;
int endX;
int a = 1;

void setup()
{
  size(500,500);
  background(0);
  strokeWeight(2);
  fill(124, 200, 250, 300);
}

void draw()
{
  lightning();
}

void lightning()
{
  while(endY < 500 && endY > 0 && endX < 500 && endX > 0)
  {  
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
     
     endY = startY + (int)(Math.random() * 15);
     endX = startX + (int)(Math.random() * 31) - 15;
     line(startX, startY, endX, endY);
     startX = endX;
     startY = endY;
  }
}

void mousePressed() 
 {
   startY = 0;
   startX = (int)(Math.random() * 501);
   endY = 250;
   endX = 250;
 }
 
void keyPressed()
{
  clear();
}
