class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 15;
    	xCorners = new int[]{16,10,2,2,6,-2,-4,-6,-6,-4,-2,6,2,2,10};
    	yCorners = new int[]{0,2,2,8,9,10,2,2,-2,-2,-10,-9,-8,-2,-2};
    	myColor = 255;
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = 0;
    }
    public void hyperSpace(){
        myDirectionX = 0;
        myDirectionY = 0;
        myCenterX = (int)(Math.random()*500);
        myCenterY = (int)(Math.random()*500);
    }
    public void setX(int x){myCenterX = x;}

    public int getX(){return (int)myCenterX;}

    public void setY(int y){myCenterY = y;}

    public int getY(){return (int)myCenterY;}

    public void setDirectionX(double x){myDirectionX = x;}

    public double getDirectionX(){return myDirectionX;}

    public void setDirectionY(double y){myDirectionY = y;}

    public double getDirectionY(){return myDirectionY;}

    public double getPointDirection(){return myPointDirection;}
}
