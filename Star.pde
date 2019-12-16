class Star //note that this class does NOT extend Floater
{
  int x;
  int y;
  public Star(){
     x = (int) (Math.random() * 1000);
     y = (int) (Math.random() * 1000) ;
  }
  
 public void show(){
   fill(255);
   ellipse(x,y,2,2);
   
 }
}
