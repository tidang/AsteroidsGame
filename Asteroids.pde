class Asteroids extends Floater{
  
  private int rotationSpeed;
  
  public Asteroids(int dx, int dy, int cx, int cy, int pd, int rs){
    corners = 13;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = 5 * 3;
   yCorners[0] = 5 * 3;
   xCorners[1] = 0 * 3;
   yCorners[1] = 0 * 3;
   xCorners[2] = -5 * 3;
   yCorners[2] = -6 * 3;
   xCorners[3] = -8 * 3;
   yCorners[3] = -8 * 3;
   xCorners[4] = -11 * 3;
   yCorners[4] = -6 * 3;
   xCorners[5] = -16 * 3;
   yCorners[5] = 0 * 3;
   xCorners[6] = -11 * 3;
   yCorners[6] = 6 * 3;
   xCorners[7] = -8 * 3;
   yCorners[7] = 8 * 3;
   xCorners[8] = -5 * 3;
   yCorners[8] = 6 * 3;
   xCorners[9] = 0 * 3;
   yCorners[9] = 0 * 3;
   xCorners[10] = 5 * 3;
   yCorners[10] = 5 * 3;
    xCorners[11] = 5 * 3;
   yCorners[11] = - 5 * 3;
   xCorners[12] = 0 * 3;
   yCorners[12] = 0 * 3;
   
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
