class Asteroid extends Floater {
    double myRotationSpeed;
  
  public Asteroid (){
    corners = 6;
    xCorners = new int[]{(int)(Math.random()*13)-22,(int)(Math.random()*7)+3,(int)(Math.random()*13)+6,(int)(Math.random()*6),(int)(Math.random()*13)-2,(int)(Math.random()*7)-10};
    yCorners = new int[]{(int)(Math.random()*9)-16,(int)(Math.random()*10)-16,0,(int)(Math.random()*11) + 5,(int)(Math.random()*9) + 4,0};
    myRotationSpeed = (Math.random()*3)-1; 
    myPointDirection = Math.random()*3;
    myXspeed = Math.random()*3 - 1;
    myYspeed = Math.random()*3 - 1;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myColor = 255;
  }
  public void move(){
    super.move();  
    myPointDirection+= myRotationSpeed;
    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
    
    public double getmyCenterX(){
      return myCenterX;
    }
    
    public double getmyCenterY(){
      return myCenterY;
    }
}
