class Asteroid extends Spaceship
{
  public Asteroid ()
  {
    corners = 6;
    myCenterX = Math.random()*800;
    myCenterY= Math.random()*800;
    myColor = (127);
    myXspeed = myYspeed= 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners [0] = -11;
    yCorners [0] = -8;
    xCorners [1] = 7;
    yCorners [1] = -8;
    xCorners [2] = 13;
    yCorners [2] = 0;
    xCorners [3] = 6;
    yCorners [3] = 10;
    xCorners [4] = -11;
    yCorners [4] = 8;
    xCorners [5] = -5;
    yCorners [5] = 0;
  }
}
