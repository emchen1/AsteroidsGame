class Asteroid extends Floater
{
  private int rotSpeed = (int)((Math.random() *5) +2);
  public Asteroid() 
  {
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = -15;
    xCorners[1] = 0;
    yCorners[1] = -20;
    xCorners[2] = 15;
    yCorners[2] = -15;
    xCorners[3] = 20;
    yCorners[3] = 0;
    xCorners[4] = 15;
    yCorners[4] = 15;
    xCorners[5] = 0;
    yCorners[5] = 20;
    xCorners[6] = -15;
    yCorners[6] = 15;
    xCorners[7] = -20;
    yCorners[7] = 0;
    
    
    myColor= 100;
    myCenterX = (int)(Math.random()*500);
    myCenterY= (int)(Math.random()*500);
    myDirectionX = (int)(Math.random()*3)-1;
    myDirectionY=(int)(Math.random()*3)-1;
    myPointDirection=0;

  }
  public void setX(int x) {
    myCenterX = x;
  } 
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return (double)myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return (double)myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return (double)myPointDirection;
  }
  public void move ()
  { 
     super.move();
     turn(rotSpeed);
   }
}
  