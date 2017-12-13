Spaceship bob;
Stars[] space = new Stars[250];
ArrayList <Asteroid> a= new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < space.length; i++)
  {
    space[i] = new Stars();
  }
  for (int j = 0; j < 10; j++)
  {
   a.add(j, new Asteroid());
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
  for (int j = 0; j < a.size(); j++)
  {
   a.get(j).show();
   a.get(j).move();
   if (dist((float)bob.getX(), (float)bob.getY(), (float)a.get(j).getX(), (float)a.get(j).getY()) <20)
   a.remove(j); 
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