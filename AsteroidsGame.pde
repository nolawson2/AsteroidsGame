Spaceship bob;
ArrayList <Bullet> joe;
ArrayList <Asteroid> max; 
Star[] jim;

public void setup() 
{

  size (1000, 1000);
  bob = new Spaceship();
  joe = new  ArrayList <Bullet>();
  max = new ArrayList <Asteroid>();



  jim = new Star[300];
  for (int i = 0; i< jim.length; i++) {
    jim[i] = new Star();
  }
}
public void draw() { 

  background(0);
  fill(255);
  for (int i = 0; i< jim.length; i++) {
    jim[i].show();
  }
  for (int i = 0; i< joe.size(); i++) {
    joe.get(i).show();
    joe.get(i).shoot(12);
    joe.get(i).move();
  }
  bob.show();
  bob.move();
  Asteroid tom = new Asteroid();
  if (Math.random() < .01) {
    max.add(tom);
  
  }
  for (int k = 0; k < max.size(); k++) {
    max.get(k).move();
    max.get(k).show();
    for (int l = 0; l < joe.size(); l++) {
      if (dist((float) max.get(k).getX(), (float) max.get(k).getY(), (float) joe.get(l).getX(), (float) joe.get(l).getY()) < 25) {
        max.remove(k);
        joe.remove(l);
      }
    }
  }
}
public void keyPressed() {
  if (key == 'a') {
    bob.turn(15);
  }
  if (key == 'd') {
    bob.turn(-15);
  }
  if (key == 'w') {

    bob.accelerate(.5);
  }
  if (key == 'h') {
    bob.resetDirection();
    bob.setX(Math.random() * 1000);
    bob.setY(Math.random() * 1000);
    bob.setPointDirection( (int) (Math.random() * 360));
  }
  if (key == 's') {

    bob.accelerate(-.5);
  }
  if (key == 'f') {
    Bullet bill = new Bullet();
    joe.add(bill);
  }
}
