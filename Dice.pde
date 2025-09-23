Die rooster;
void setup()
{
  noLoop();
  size (500,500);
  rooster = new Die (50,50);
}
void draw()
{
  //your code here
  rooster.roll();
  rooster.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, dot;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    dot = (int)(Math.random()*7)+1;
    System.out.println(dot);
  }
  void show()
  {
    //your code here
    rect(myX, myY, 50, 50, 20);
    fill (0,0,0);
    if (dot==1){
      ellipse (myX, myY, 10, 10);
    }
  }
}
