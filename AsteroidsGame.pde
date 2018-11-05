Spaceship ship = new Spaceship();
Star[] random;
boolean space = false;
boolean w = false;
boolean a = false;
boolean d = false;

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

  if(space == true){
   hyperspace();
}
  if (w){
      ship.accelerate(.02);
  }
  if (a){
     ship.turn(-10); 
  }
  if (d){
    ship.turn(10);
  }



  ship.move();
  ship.show();
}

public void keyPressed(){
 
    while (key == ' '){
    boolean space = true;
}
  
  while (key == 'w'){
      boolean w = true;
  }
  while (key == 'a'){
    boolean a = true;
  }
  while (key == 'd'){
    boolean d = true;
  }
}


public void hyperspace(){

  ship.setX((int)(Math.random() * 500));   
  ship.setY((int)(Math.random() * 500));      
  ship.setDirectionX(0);   
  ship.setDirectionY(0);     
  ship.setPointDirection(0);   

  
}
