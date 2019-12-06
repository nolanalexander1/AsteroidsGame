//your variable declarations here
Spaceship myShip;
Star[] stars;
Asteroid[] myAsteroids;
public void setup() 
{
  size(500,500);
  background(0);
  myShip = new Spaceship();
  stars = new Star[200];
  myAsteroids = new Asteroid[10];
  for(int i = 0; i < stars.length; i++){
  	stars[i] = new Star();
  }
  for(int i = 0; i < myAsteroids.length; i++){
  	myAsteroids[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
   for(int i = 0; i < stars.length; i++){
  	stars[i].show();
  }
  for(int i = 0; i < myAsteroids.length; i++){
  	myAsteroids[i].show();
  	myAsteroids[i].move();
  }
  myShip.show();
  myShip.move();
  if(keyPressed){
  	if(key == 'w'){
    		myShip.accelerate(.1);
    	}
    	if(key == 's'){
    		myShip.accelerate(-.1);
    	}
   		if(key == 'a'){
    		myShip.turn(-7);
    	}
    	if(key == 'd'){
    		myShip.turn(7);
    	}
    	if(key == 'h'){
    		myShip.hyperSpace();
    	}
  }
}
//replaced keyPressed() function with if(keyPressed) so that repsonse is faster and game feels smoother
/*public void keyPressed()
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
}*/


