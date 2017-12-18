//your variable declarations here
Spaceship apollo = new Spaceship();
Star [] stars;
public void setup() {
  //your code here
  size(1024, 384);
  frameRate(60);
  stars = new Star[(int)(Math.random()*300 + 150)];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() {
  //your code here
  background(0);
  apollo.move();
  apollo.show(); 
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
}
public void keyPressed(){
  if (key == 'a'){apollo.turn(-5);}
  if (key == 's'){apollo.accelerate(-1);}
  if (key == 'd'){apollo.turn(5);}
  if (key == 'w'){apollo.accelerate(1);}
  if (key == 'r'){
    apollo.setX((int)(Math.random()*1024));
    apollo.setY((int)(Math.random()*768));
    apollo.setDirectionX(0);
    apollo.setDirectionY(0);
    apollo.setPointDirection(0);
  }
}
