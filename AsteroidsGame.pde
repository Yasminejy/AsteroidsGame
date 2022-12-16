Spaceship bob = new Spaceship();
Star[] nightSky = new Star [200];
ArrayList <Asteroid> bobby;
ArrayList <Bullet> shots = new ArrayList <Bullet> ();

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

  for (int i = 0; i< bobby.size(); i++)
  {
    bobby.get(i).show();
    bobby.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)bobby.get(i).getX(), (float)bobby.get(i).getY());
    if (d<20)
      bobby.remove(i);

    for (int i =0; i<shots.size(); i++)
    {
      for (int j=0; j< bobby.size(); j++)
      {
        float e = dist ((float)shots.get(i).getX(), (float)shots.get(i).getY, (float)bobby.get(j).getX(), (float)bobby.get(j).getY());
        if (e<15)
        {
          shots.remove(i);
          bobby.remove(j);
          break;
        }
      }
      bob.show();
      bob.move();
    }
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

      if (key == '4') {
        bob.turn (-5);
      }
      if (key == '6') {
        bob.turn (5);
      }
      if (key == '5') {
        bob.accelerate (0.3);
      } else if (key == ' ') {
        shots.add(new Bullet(bob));
      }
    }
    }
  
