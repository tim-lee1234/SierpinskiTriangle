public void setup()
{
  size(800,800);
}
public void draw()
{
background(0);
  sierpinski(80,675,650);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
if(len<=20){
    fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    
  }
}
