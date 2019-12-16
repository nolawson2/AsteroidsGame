class Bullet extends Spaceship {
  
    public Bullet(){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myDirectionX = bob.getDirectionX();
    myDirectionY = bob.getDirectionY();
    myPointDirection = bob.getPointDirection();
     
  }


   public void show(){
     fill(255);
     ellipse((float)myCenterX,(float)myCenterY,3,3);
   }
   public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX +=  .5 * myDirectionX;    
    myCenterY +=  .5 * myDirectionY;     
  } 
  public void shoot (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX = Math.cos(dRadians) * dAmount;    
    myDirectionY = Math.sin(dRadians) * dAmount;       
  }  
   
}
