public class Bullet extends Floater
{
  private double dRadians;
  public Bullet(Spaceship apollo){
    myCenterX = apollo.getX();
    myCenterY = apollo.getY();
    myPointDirection = apollo.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 30 * Math.cos(dRadians) + apollo.getDirectionX();
    myDirectionY = 30 * Math.sin(dRadians) + apollo.getDirectionY();
  }
  
  public void show(){
    fill(255,255,0);
    ellipse((float)myCenterX, (float)myCenterY, 5,5);
  }
  
  public void move(){
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
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