//your variable declarations here
private Spaceship myShip;
private Star[] stars;
private ArrayList <Asteroid> myAsteroids;
private ArrayList <Bullet> myBullets;
public void setup() 
{
  size(500,500);
  background(0);
  myShip = new Spaceship();
  stars = new Star[200];
  myAsteroids = new ArrayList <Asteroid>();
  myBullets = new ArrayList <Bullet>();
  for(int i = 0; i < stars.length; i++){
  	stars[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
  	myAsteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
   for(int i = 0; i < stars.length; i++){
  	stars[i].show();
  }
  for(Asteroid i : myAsteroids){
  	i.show();
  	i.move();
  }
  for(int i = 0; i < myAsteroids.size(); i++){
    Asteroid placeholder = myAsteroids.get(i);
    if(dist((float)myShip.getX(), (float)myShip.getY(), (float)placeholder.getX(), (float)placeholder.getY())<20){
      myAsteroids.remove(i);
      i = i - 1;
    }
  }
    for(Bullet i : myBullets){
      i.move();
      i.show();
  }
  for(int j = 0; j < myBullets.size(); j++){
    Bullet currentBullet = myBullets.get(j);
    for(int i = 0; i < myAsteroids.size(); i++){
      Asteroid currentAsteroid = myAsteroids.get(i);
      if(dist((float)currentAsteroid.getX(), (float)currentAsteroid.getY(), (float)currentBullet.getX(), (float)currentBullet.getY())<20){
        myAsteroids.remove(i);
        myBullets.remove(j);
        i = i - 1;
      }
    }
  }
  myShip.show();
  myShip.move();
  if(keyPressed){
  	if(key == 'w'){
    		myShip.accelerate(.07);
    	}
    	if(key == 's'){
    		myShip.accelerate(-.07);
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
public void keyPressed()
{
  if(key == 'q'){
        myBullets.add(new Bullet(myShip)); 
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


