class Spaceship extends Floater
{ 
  
  public Spaceship () {
   corners = 7;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = 12;
   yCorners[0] = 0;
   xCorners[1] = 4;
   yCorners[1] = -8;
   xCorners[2] = -3;
   yCorners[2] = 0;
   xCorners[3] = -8;
   yCorners[3] = -8;
   xCorners[4] = -8;
   yCorners[4] = 6;
   xCorners[5] = -3;
   yCorners[5] = 0;
   xCorners[6] = 4;
   yCorners[6] = 8;
   xCorners[7] = 12;
   yCorners[7] = 0;
   myColor = color(252, 170, 46);
   myCenterX = 400;
   myCenterY = 400;
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
