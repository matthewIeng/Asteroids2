Spaceship bob = new Spaceship(); 
Star[] starryNight = new Star[100];
boolean w = false;
boolean a = false;
boolean d = false;
boolean s = false;

public void setup() 
{
  size(500,500);
  for(int i = 0; i < starryNight.length; i++)
  starryNight[i] = new Star();
}
public void draw() 
{
  background(0);
  bob.show(); 
  bob.move();
  if (a == true)
    bob.turn(-4);
  if (d == true)
    bob.turn(4);
  if (w == true)
    bob.accelerate(0.2);
  if (s == true) {
    bob.hyperspace();
    s = false; }
  for(int i = 0; i < starryNight.length; i++)
  starryNight[i].show();
}

public void keyPressed() 
{ 
  if (key == 'w')
    w = true;
  if (key == 'a')
    a = true;
  if (key == 'd')
    d = true;
  if (key == 's')
    s = true;
}

public void keyReleased() {
  if (key == 'w')
    w = false;
  if (key == 'a')
    a = false;
  if (key == 'd')
    d = false;
  if (key == 's')
    s = false;
}
