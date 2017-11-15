Spaceship bob;
Stars[] space = new Stars[250];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < space.length; i++)
  {
    space[i] = new Stars();
  }
  bob = new Spaceship();
}
public void draw() 
{
  background(0);
  bob.show();
  for (int i = 0; i < space.length; i++)
  {
    space[i].show();
  }
  bob.move();
 
}
 public void keyTyped()
  {
    if (key == 's')
    {
      bob.setX((int)(Math.random()*500));
      bob.setY((int)(Math.random()*500));
      bob.setDirectionX(0);
      bob.setDirectionY(0);
      bob.setPointDirection((int)(Math.random()*360));
    }
    if (key == 'a')
    {
     bob.turn(10);
    }
    if (key == 'd')
    {
     bob.turn(-10);
    }
    if(key == 'w')
    {
     bob.accelerate(.1);
     bob.move();
    }
  }