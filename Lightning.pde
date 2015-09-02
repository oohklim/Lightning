int startY = 0;
int startX = (int)(Math.random() * 201) + 150;
int endY = 0;
int endX = 250;
int a = 1;

void setup()
{
  size(500,500);
  strokeWeight(1.5);
  background(0);
}

void draw()
{
  while(endY < 500)
  {
  	 endY = startY + (int)(Math.random() * 15);
  	 endX = startX + (int)(Math.random() * 31) - 15;
     line(startX, startY, endX, endY);
     startX = endX;
     startY = endY;
     if(a == 1)
     {
     	stroke(124, 200, 250);
     }
     else
     {
     	stroke(214, 228, 238);
     }
     a = a * -1;
  }
}

void mousePressed() 
 {
   startY = 0;
   startX = (int)(Math.random() * 201) + 150;
   endY = 0;
   endX = 250;
 }
