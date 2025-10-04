int total=0;
void setup()
{
  size (500,600);
  noLoop();
}
void draw()
{
background(235,200,255);
  for (int y = 25; y<500; y = y+50){
    for (int x = 25; x < 500; x = x+50){
      Die rooster = new Die(x,y);
      rooster.roll();
      rooster.show();
    }
  }
  textSize(20);
    text("The total amount of dice values is " + total, 70, 550);
}
void mousePressed()
{
  redraw();
  total = 0;
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
    dot = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    total = total + dot;
    System.out.println(total);
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    rectMode (CENTER);
    rect(myX, myY, 50, 50,20);
    fill (0);
    if (dot==1){
      ellipse (myX, myY, 10, 10);
    } else if (dot == 2){
     ellipse(myX-10,myY-10,10,10);
     ellipse(myX+10,myY+10,10,10);
    } else if (dot == 3){
      ellipse (myX, myY, 10, 10);
      ellipse(myX-10,myY-10,10,10);
      ellipse(myX+10,myY+10,10,10);
    } else if (dot == 4){
      ellipse(myX-10,myY-10,10,10);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX-10,myY+10,10,10);
      ellipse(myX+10,myY-10,10,10);
    } else if (dot == 5){
      ellipse(myX-10,myY-10,10,10);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX-10,myY+10,10,10);
      ellipse(myX+10,myY-10,10,10);
      ellipse (myX, myY, 10, 10);
    } else{
      ellipse(myX-7,myY-15,10,10);
      ellipse(myX-7,myY,10,10);
      ellipse(myX-7,myY+15,10,10);
      ellipse(myX+7,myY-15,10,10);
      ellipse(myX+7,myY,10,10);
      ellipse(myX+7,myY+15,10,10);
    }
  }
}
