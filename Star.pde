class Star //note that this class does NOT extend Floater
{
  int myX, myY;
  public Star() {
   myX = (int)(Math.random() * 500);
   myY = (int)(Math.random() * 500);
  }
  
  public void show(){
   fill(255);
    PFont waves;
    waves = loadFont("BlackadderITC-Regular-10");
   textSize(10);
   textFont(waves);
   text("w", myX, myY); 
  }
}
