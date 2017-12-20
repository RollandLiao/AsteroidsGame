public class Star //note that this class does NOT extend Floater
{
  //your code here
  int myX;
  int myY;
  public Star(){
  myX = (int)(Math.random()*1024);
  myY = (int)(Math.random()*768);
  }
  public void show(){
    fill(255,255,200);
    ellipse(myX,myY,1,1);
  }
  public int getX(){
    return myX;
  }
  public int getY(){
    return myY;
  }
}