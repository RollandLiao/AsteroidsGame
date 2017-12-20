public class Asteroid extends Floater
{
  private int roSpeed = (int)(Math.random()*5-2);
  public Asteroid() {
    corners = 4;
    int[] xs = {-16, 0, 16, 0};
    int[] ys = {0, 16, 0, -16};
    xCorners = xs;
    yCorners = ys;

    myColor = 150;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
    myDirectionX = (Math.random()*5-2);
    myDirectionY = (Math.random()*5-2);
    myPointDirection = (Math.random()*360);
  }
  public void move(){
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
    myPointDirection = myPointDirection + roSpeed;
    
    if(myCenterX > width){     
      myCenterX = 0;    
    }    
    else if (myCenterX<0){     
      myCenterX = width;    
    }    
    
    if(myCenterY > height){    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0){     
      myCenterY = height;    
    }   
  }
  
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
}