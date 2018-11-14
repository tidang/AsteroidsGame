Spaceship ship = new Spaceship();
Star[] random;
Asteroids trash = new Asteroids();
private boolean a, w, d;

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

  if (w){
      ship.accelerate(.02);
  }
  if (a){
     ship.turn(-5); 
  }
  if (d){
    ship.turn(5);
  }



  ship.move();
  ship.show();
  trash.show();
  trash.move();
}

public void keyPressed(){
 
    if (key == ' '){
    hyperspace();
}
  
  if (key == 'w'){
     w = true;
  }
  if (key == 'a'){
   a = true;
  }
 if (key == 'd'){
   d = true;
  }
}

public void keyReleased(){
  if (key == 'w'){
     w = false;
  }
  if (key == 'a'){
   a = false;
  }
 if (key == 'd'){
   d = false;
  }
}



public void hyperspace(){

  ship.setX((int)(Math.random() * 500));   
  ship.setY((int)(Math.random() * 500));      
  ship.setDirectionX(0);   
  ship.setDirectionY(0);     
  ship.setPointDirection(0);   

  
}
