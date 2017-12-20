//your variable declarations here
Spaceship apollo = new Spaceship();
Star [] stars;
ArrayList<Bullet> shots;
ArrayList<Asteroid> rocks;
public void setup() {
  //your code here
  size(800, 600);
  stars = new Star[(int)(Math.random()*300 + 150)];
  rocks = new ArrayList<Asteroid>();
  shots = new ArrayList<Bullet>();
  //new Asteroid[(int)(Math.random()*20+5)];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int iA = 0; iA < 20; iA++) {
    rocks.add(new Asteroid());
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
  for (int iA = 0; iA < rocks.size(); iA++) {
    rocks.get(iA).show();
    rocks.get(iA).move();
  }
  collide();
  for (int iB = shots.size() - 1;iB >= 0; iB--) {
    shots.get(iB).show();
    shots.get(iB).move();
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
  if (key == ' '){
    shots.add(new Bullet(apollo));
  }
}

/*public void keyReleased(){
  if (keyCode == 'a'){apollo.turn(0);}
  if (keyCode == 's'){apollo.accelerate(0);}
  if (keyCode == 'd'){apollo.turn(0);}
  if (keyCode == 'w'){apollo.accelerate(0);}
}
*/

public void collide(){
  for(int i = rocks.size()-1;i >= 0;i--){
    if(dist(rocks.get(i).getX(), rocks.get(i).getY(), apollo.getX(), apollo.getY()) < 20){
      rocks.remove(i);
      rocks.add(new Asteroid());
    }
  }
  for(int iA = shots.size()-2; iA >= 0; iA--){
    for(int iB = rocks.size()-2; iB>=0; iB--){
      if(dist(shots.get(iA).getX(), shots.get(iA).getY(), rocks.get(iB).getX(), rocks.get(iB).getY())<10){
        shots.remove(iA);
        rocks.remove(iB);
//        rocks.add(new Asteroid());
      }
    }
  }
}