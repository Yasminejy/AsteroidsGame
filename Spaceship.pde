class Spaceship extends Floater  
{   
  public Spaceship()
  {
    myCenterX = myCenterY = 255;
    myColor = (255);
    myXspeed = myYspeed=2;
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners [0] = -8;
    yCorners [0] = -8;
    xCorners[1] = 16;
    yCorners [1]= 0;
    xCorners [2]= -8;
    yCorners [2] = 8;
    xCorners [3] = -2;
    yCorners [3] = 0;
  }
}
