class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 5;
    	xCorners = new int[]{20,0,-20,-10,10};
    	yCorners = new int[]{0,20,0,-20,-20};
    	myColor = 150;
    	myCenterX = myCenterY = 250;
    	myDirectionX = (int)(Math.random()*19)-9;
    	myDirectionY = (int)(Math.random()*19)-9;
    	myPointDirection = (int)(Math.random()*360);
    	rotSpeed = 10;
	}
	public void move()
	{
		turn(rotSpeed);
    	//change the x and y coordinates by myDirectionX and myDirectionY       
	    myCenterX += myDirectionX;    
	    myCenterY += myDirectionY;     

	    //wrap around screen    
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
}