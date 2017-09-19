int count;




void setup()
{
  
  size (500,300);
  textAlign (CENTER);
	noLoop();
}
void draw()
{
  count =0;
  fill (215);
  rect (50, 0, 50,50);
  for (int y=0; y<=300; y+=50)
    {
      for (int x=0; x<=500; x+=70)
      {
	Die Bob= new Die (x,y);
  count= count+ Bob.myDot;
  Bob.show ();
      }
    }
    fill (255,0,0);
    
    text (count, 63,10);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
 
  
	//variable declarations here
  int myX, myY, myDot;
	Die(int x, int y) //constructor
	{
		//variable initializations here
  myX=x;
  myY=y;
  roll ();
	}
	void roll()
	{
	if ((int)((Math.random()*6)+1)<=1)
  myDot=1;
  else if ((int)((Math.random()*6)+1)<=2)
  myDot=2;
  else if ((int)((Math.random()*6)+1)<=3)
  myDot=3;
  else if ((int)((Math.random()*6)+1)<=4)
  myDot=4;
  else if ((int)((Math.random()*6)+1)<=5)
  myDot=5;
  else myDot=6;
	}
	void show()
	{
		fill (255);
    rect (myX, myY, 50,50);
    fill (0);
    if (myDot==1)
    {
      ellipse (myX+25,myY+25, 10,10);
      }
    else if (myDot==2)
    {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+35, 10,10);
    }
    else if (myDot==3)
    {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+25, myY+25,10,10);
      ellipse (myX+35, myY+35, 10,10);
    }
    else if (myDot==4)
    {
      ellipse (myX+15, myY+10, 10, 10);
      ellipse (myX+38, myY+10, 10, 10);
      ellipse (myX+15, myY+35, 10,10);
      ellipse (myX+38, myY+35,10,10);
    }
    else if (myDot==5)
     { ellipse (myX+15, myY+10, 10, 10);
      ellipse (myX+38, myY+10, 10, 10);
      ellipse (myX+15, myY+35, 10,10);
      ellipse (myX+38, myY+35,10,10);
      ellipse (myX+28, myY+25, 10, 10);
     }
     
     else 
     {
      ellipse (myX+15, myY+10, 10, 10);
      ellipse (myX+38, myY+10, 10, 10);
      ellipse (myX+38, myY+20, 10, 10);
      ellipse (myX+15, myY+35, 10,10);
      ellipse (myX+38, myY+35,10,10);
      ellipse (myX+15, myY+20, 10,10);
     }
}

}