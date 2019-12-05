class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize;
  public Star(){
  	myX = (int)(Math.random()*500);
  	myY = (int)(Math.random()*500);
  	mySize = (int)(Math.random()*5);
  }
  public void show(){
  	stroke(255);
  	fill(255);
  	ellipse(myX, myY, mySize, mySize);
  }
}
