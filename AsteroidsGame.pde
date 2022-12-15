Spaceship bob = new Spaceship();
  Star[] nightSky = new Star [200];
  ArrayList <Asteroid> bobby;


  public void setup()
  {
    size (800, 800);
    for (int i = 0; i < nightSky.length; i++)
    {
      nightSky [i] = new Star();
    }
    bobby = new ArrayList <Asteroid>();
    for (int i=0; i<5; i++)
    {
      bobby.add(new Asteroid());
    }

  }
  public void draw()
  {
    background(0);
    for (int i = 0; i < nightSky.length; i++)
    {
      nightSky [i].show();
    }
    
    for (int i =0; i < bobby.size();i++)
    {
      bobby.get(i).show();
      bobby.get(i).move();
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
        bob.accelerate (0.5);
      }
      if (key == 's'|| key == 'S') {
        bob.accelerate (-0.5);
      }
    }   
  }
