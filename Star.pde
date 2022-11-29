class Star //note that this class does NOT extend Floater
{
  class Star
{
  private int myX, myY;

  public Star()
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  void show ()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse (myX, myY, 3, 3);
  }
}
}
