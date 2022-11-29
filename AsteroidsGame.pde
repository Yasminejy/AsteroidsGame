Spaceship bob = new Spaceship();
  Star[] nightSky = new Star [200];

  public void setup()
  {
    size (800, 800);
    for (int i = 0; i < nightSky.length; i++)
    {
      nightSky [i] = new Star();
    }

  }
  public void draw()
  {
    background(0);
    for (int i = 0; i < nightSky.length; i++)
    {
      nightSky [i].show();
    }
    bob.show();
    bob.move();
  }
  public void keyPressed()
  {
    if (keyPressed)
    {
      if (key == 'a'|| key == 'A') {
        bob.turn (-20);
      }
      if (key == 'd'|| key == 'D') {
        bob.turn (20);
      }
      if (key == 'w'|| key == 'W') {
        bob.accelerate (0.25);
      }
      if (key == 's'|| key == 'S') {
        bob.accelerate (-0.25);
      }
    }
  }

