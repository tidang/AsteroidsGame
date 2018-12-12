Spaceship ship = new Spaceship();
Star[] random;
private boolean a, w, d, s;
ArrayList<Asteroids> trash = new ArrayList<Asteroids>();

public void setup() 
{
  size(500, 500);
  background(13, 194, 209);
  
  random = new Star[100];
  for(int i = 0; i < random.length; i++){
   random[i] = new Star(); 
   
  }
    
    for(int i = 0; i < 15; i++){
    trash.add(new Asteroids());
  }
}
public void draw() 
{
  background(13, 194, 209);
     
   for(int i = 0; i < random.length; i++){
   random[i].show();
  }

  if(!w && !s){
   ship.setDirectionX(ship.getDirectionX() * .95); 
   ship.setDirectionY(ship.getDirectionY() * .95);
  }
  if (w){
      ship.accelerate(.04);
  }
  if (s){
      ship.accelerate(-.04);
  }
  if (a){
     ship.turn(-5); 
  }
  if (d){
    //println("Work?");
    ship.turn(5);
  }



  ship.move();
  ship.show();
  
  for(int i = 0; i < trash.size(); i++){
    trash.get(i).show();
    trash.get(i).move();
    
    float distance = dist(ship.getX(), ship.getY(), trash.get(i).getX(), trash.get(i).getY());
    if(distance <= 40)
      trash.remove(i);
  }
}

public void keyPressed(){
 
    if (key == ' '){
    hyperspace();
}
  
  if (key == 'w'){
     w = true;
  }
  if (key == 's'){
     s = true;
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
   if (key == 's'){
     s = false;
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
