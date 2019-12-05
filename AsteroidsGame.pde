//your variable declarations here
Spaceship myShip;
Star[] stars;
public void setup() 
{
  size(500,500);
  background(0);
  myShip = new Spaceship();
  stars = new Star[200];
  for(int i = 0; i < stars.length; i++){
  	stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
  	stars[i].show();
  }
  myShip.show();
  myShip.move();
}
public void keyPressed()
{
    	if(key == 'w'){
    		myShip.accelerate(.3);
    	}
    	if(key == 's'){
    		myShip.accelerate(-.3);
    	}
   		if(key == 'a'){
    		myShip.turn(-10);
    	}
    	if(key == 'd'){
    		myShip.turn(10);
    	}
    	if(key == 'h'){
    		myShip.hyperSpace();
    	}
}

