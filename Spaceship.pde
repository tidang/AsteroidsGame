class Spaceship extends Floater
{ 
  
  public Spaceship () {
   corners = 8;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = 12 * 2;
   yCorners[0] = 0 * 2;
   xCorners[1] = 4 * 2;
   yCorners[1] = -8 * 2;
   xCorners[2] = -3 * 2;
   yCorners[2] = 0 * 2;
   xCorners[3] = -8 * 2;
   yCorners[3] = -6 * 2;
   xCorners[4] = -8 * 2;
   yCorners[4] = 6 * 2;
   xCorners[5] = -3 * 2;
   yCorners[5] = 0 * 2;
   xCorners[6] = 4 * 2;
   yCorners[6] = 8 * 2;
   xCorners[7] = 12 * 2;
   yCorners[7] = 0 * 2;
   
   myColor = color(252, 170, 46);
   myCenterX = 250;
   myCenterY = 250;
   myDirectionX = 0;
   myDirectionY = 0;
   myPointDirection = 0;
   
  }
  
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int) myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int) myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;} 
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;} 
  public double getDirectionY(){return myDirectionY;}  
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
}
