//your variable declarations here
Spaceship apollo = new Spaceship();
Star [] stars;
ArrayList<Asteroid> rocks;
public void setup() {
  //your code here
  size(800, 600);
  stars = new Star[(int)(Math.random()*300 + 150)];
  rocks = new ArrayList<Asteroid>();
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
<<<<<<< HEAD
public void collide(){
  for(int i = rocks.size() -1;i>=0;i--){
 // for(int i = 0; i <= rocks.size(); i++){ 
    if(dist(rocks.get(i).getX(), rocks.get(i).getY(), apollo.getX(), apollo.getY()) < 20){
      rocks.remove(i);
 //     rocks.add(new Asteroid());
    }
  }
}
=======
>>>>>>> 8fe1726424e6173e8bac3eb10186f8e906d27300
