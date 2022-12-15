class Bullet extends Floater
{
  protected int myColor;
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getsX();
    myYspeed = theShip.getsY();
    myPointDirection = jake.getDirection();
    myColor= color (255,0,0);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    myDirectionX = 5*Math.cos(dRadians)+jake.getDirection();
    myDirectionY = 5*Math.sin(dRadians)+jake.getDirection();
    accelerate(10);
  }
  
  public void show()
  {
    strokeWeight(1);
    translate ((flat)myCenterX,(flaot)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate (dRadians);
    fill (255,0,0);
    strokeWeight(2);
    stroke(255,0,0);
   ellipse(0,0,3,3);
   rotate (-1*dRadians);
   stroke(255);
   translate(-1*(float)myCenterX, -1*(float)myCenterY);
   fill(255,0,0); 
  }
  
  public void move()
  {
    myCenterX+= myDirectionX;
    myCenterY+= myDirectionY;;
  }
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}
public double getDirection(){return myPointeDirection;}
public double getYspeed(){return myYspeed;}
public double getXspeed(){return myXspeed;}
}
