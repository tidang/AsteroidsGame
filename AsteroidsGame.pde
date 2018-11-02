Spaceship ship = new Spaceship();
Star[] random;

public void setup() 
{
  size(500, 500);
  background(13, 194, 209);
  
  random = new Star[100];
  for(int i = 0; i < random.length; i++){
   random[i] = new Star(); 
  }
}
public void draw() 
{
  background(13, 194, 209);
     
   for(int i = 0; i < random.length; i++){
   random[i].show();
  }

  
  ship.move();
  ship.show();
}
public void keyPressed(){
  if(key == ' '){
   hyperspace();
}
  if (key == 'w'){
      ship.accelerate(.02);
  }
  if (key == 'a'){
     ship.turn(-30); 
  }
  if (key == 'd'){
    ship.turn(30);
  }
}


public void hyperspace(){

  ship.setX((int)(Math.random() * 500));   
  ship.setY((int)(Math.random() * 500));      
  ship.setDirectionX(0);   
  ship.setDirectionY(0);     
  ship.setPointDirection(0);   

  
}
