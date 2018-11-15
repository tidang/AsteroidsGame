Spaceship ship = new Spaceship();
Star[] random;
Asteroids [] trash;
private boolean a, w, d, s;

public void setup() 
{
  size(500, 500);
  background(13, 194, 209);
  
  random = new Star[100];
  for(int i = 0; i < random.length; i++){
   random[i] = new Star(); 
   
  }
  
  trash = new Asteroids [10];
    for(int i = 0; i < trash.length; i++){
   int cy = (int)(Math.random() * 501);
   int cx = (int)(Math.random() * 501);
   int dx = (int)(Math.random() * 2);
   int dy = (int)(Math.random() * 2);
   int pd = (int)(Math.random() * 360);
   int rs = (int)(Math.random() * 2 + 1);
   trash[i] = new Asteroids(dx, dy, cx, cy, pd, rs); 
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
    ship.turn(5);
  }



  ship.move();
  ship.show();
  
   for(int i = 0; i < trash.length; i++){
   trash[i].show();
   trash[i].move();
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
