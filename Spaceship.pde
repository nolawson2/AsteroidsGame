class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    xCorners[0] = 16;
    xCorners[1] = -8;
    xCorners[3] = -8;
    xCorners[2] = -15;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 8;
    yCorners[3] = -8;
    yCorners[2] = 0;
    myColor = color(255, 255, 255);
    myCenterX = myCenterY = 250; 
    myDirectionX = myDirectionY = 0; 
    myPointDirection = 0;
  }
  public void setX(double x){
      myCenterX = x;
  }
   double getX(){
    return myCenterX;
  }
  public void setY(double y){
      myCenterY = y;
  }
  public void resetDirection(){
      myDirectionX = myDirectionY = 0;
  }
  double getY(){
    return myCenterY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
}
