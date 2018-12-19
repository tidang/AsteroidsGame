Spaceship ship = new Spaceship();
Star[] random;
private boolean a, w, d, s;
public int gameOver = 0;
public int life = 3;
ArrayList<Asteroids> trash = new ArrayList<Asteroids>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet> ();

public void setup() 
{
  
  size(500, 500);
  background(13, 194, 209);
  
    
  random = new Star[100];
  for(int i = 0; i < random.length; i++){
   random[i] = new Star(); 
   
  }
    
    for(int i = 0; i < 20; i++){
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
    
    ship.turn(5);
  }

  ship.move();
  ship.show();

  
   for(int h = 0; h < pewpew.size(); h++){
    pewpew.get(h).show();
    pewpew.get(h).move();
   }
   
   fill(255);
  textSize(50);
  text("lives: " + life, 45, 50);
  
  
  for(int i = 0; i < trash.size(); i++){
    trash.get(i).show();
    trash.get(i).move();
    
    float distance = dist(ship.getX(), ship.getY(), trash.get(i).getX(), trash.get(i).getY());
    if(distance <= 40){
      trash.remove(i);
      gameOver++;
      life--;
    }
      
  }
  
  if(gameOver == 3){
    delay(500);
    background(0);
    fill(255);
    textSize(50);
    text("GAME OVER", 115, 250);
 
  }
  
 
 for (int t = 0; t < trash.size(); t ++)
{
  for(int p = 0; p < pewpew.size(); p++)
  {
    float distanceTwo = dist(pewpew.get(p).getX(),pewpew.get(p).getY(), trash.get(t).getX(), trash.get(t).getY());
    
    if(distanceTwo <= 40){
      trash.remove(t);
      pewpew.remove(p);
      break;
   
    }
  }
}

  if(trash.size() == 0){
    delay(500);
    background(255);
    fill(0);
    textSize(50);
    text("YOU WIN!", 115, 250);
  }


}

public void keyPressed(){
 
    if (key == 'f'){
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
  
  if(key == ' '){
   pewpew.add(new Bullet(ship)); 
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
