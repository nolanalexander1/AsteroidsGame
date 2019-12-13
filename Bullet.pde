class Bullet extends Floater
{
	public Bullet(Spaceship theShip){
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myDirectionX = theShip.getDirectionX();
		myDirectionY = theShip.getDirectionY();
		myPointDirection = theShip.getPointDirection();
		accelerate(6);
	}
	public void show(){
		fill(255,0,0);
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, 3,3);
	}
	public void move(){
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;
	}

	public void setX(int x){myCenterX = x;}

    public int getX(){return (int)myCenterX;}

    public void setY(int y){myCenterY = y;}

    public int getY(){return (int)myCenterY;}

    public void setDirectionX(double x){myDirectionX = x;}

    public double getDirectionX(){return myDirectionX;}

    public void setDirectionY(double y){myDirectionY = y;}

    public double getDirectionY(){return myDirectionY;}
}