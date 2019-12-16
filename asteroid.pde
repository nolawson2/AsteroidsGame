class Asteroid extends Spaceship  
{   
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    xCorners[0] = 19;
    xCorners[1] = -11;
    xCorners[3] = -10;
    xCorners[2] = 19;
    xCorners[2] =  18;
    xCorners[2] = -17;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 10;
    yCorners[3] = -14;
    yCorners[2] = 0;
    yCorners[2] = -16;
    yCorners[2] = 19;
    myColor = color(130, 130, 130);
   if((int) (Math.random() * 2) -1 >= 0){
     myCenterX = Math.random() * 1000 - 1 ;
     myCenterY = 500 - (( (int) (Math.random() * 3) - 1) * 500);
     
   }else{
       myCenterY = Math.random() * 1000 - 1 ;
       myCenterX = 500 - (( (int) (Math.random() * 3) - 1) * 500);
   }
    myDirectionX = Math.random() * 5 *((Math.random() * 3) - 1); 
    myDirectionY = Math.random() * 5 *((Math.random() * 3) - 1) ; 
    myPointDirection = Math.random() * 360;
  }
   

}
