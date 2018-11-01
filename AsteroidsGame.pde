Spaceship ship = new Spaceship();

public void setup() 
{
  size(500, 500);
  background(13, 194, 209);
}
public void draw() 
{
  background(13, 194, 209);
  ship.move();
  ship.show();
}
public void keyPressed(){
  //if (key == ' '){
 //    ship.hyperspace();
 // }
  if (key == 'w'){
      ship.accelerate(.03);
  }
  if (key == 'a'){
     ship.turn(-15); 
  }
  if (key == 'd'){
    ship.turn(15);
  }
}
