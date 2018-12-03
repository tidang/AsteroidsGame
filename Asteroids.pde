class Asteroids extends Floater{
  
  private int rotationSpeed;
  
  public Asteroids(int dx, int dy, int cx, int cy, int pd, int rs){
    corners = 15;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = 2 * 10;
   yCorners[0] = -2 * 10;
   xCorners[1] = 0 * 5;
   yCorners[1] = 0 * 5;
   xCorners[2] = -2 * 5;
   yCorners[2] = 2 * 5;
   xCorners[3] = -4 * 5;
   yCorners[3] = 4 * 5;
   xCorners[4] = -6 * 5;
   yCorners[4] = 4 * 5;
   xCorners[5] = -8 * 5;
   yCorners[5] = 3 * 5;
   xCorners[6] = -10 * 5;
   yCorners[6] = 1 * 5;
   xCorners[7] = -10 * 5;
   yCorners[7] = -1 * 5;
   xCorners[8] = -8 * 5;
   yCorners[8] = -3 * 5;
   xCorners[9] = -6 * 5;
   yCorners[9] = -4 * 5;
   xCorners[10] = -8 * 5;
   yCorners[10] = -3 * 5;
   xCorners[11] = -6 * 5;
   yCorners[11] = -4 * 5;
   xCorners[12] = -4 * 5;
   yCorners[12] = -4 * 5;
   xCorners[13] = -2 * 5;
   yCorners[13] = -2 * 5;
   xCorners[14] = 2 * 10;
   yCorners[14] = 2 * 10;
   
   myColor = color(0);
   myCenterX = cx;
   myCenterY = cy;
   myDirectionX = dx;
   myDirectionY = dy;
   myPointDirection = pd;
   rotationSpeed = rs;
   
  }
  
  public void move(){   
    turn(rotationSpeed);
    
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
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
