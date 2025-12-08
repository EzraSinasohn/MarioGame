public class Object {
  protected float myX, myY, myWidth, myHeight, vx, vy, g;
  protected PImage img;
  public void show() {
    image(img, myX, myY, myWidth, myHeight);
  }
  
  public void move() {
    if((keys[0] || keys[1])) {
      if(keys[0]) {accelerate(1, 10);}
      if(keys[1]) {accelerate(-1, -10);}
    } else {
      vx *= 0.9;
      if(Math.abs(vx) < 0.1) {vx = 0;}
    }
    myX -= vx;
  }
  
  public void accelerate(float a, float vMax) {
    if(vMax < 0) {
      if(vx > vMax) {vx += a;}
    } else {
      if(vx < vMax) {vx += a;}
    }
  }
  
  public float getX() {return myX;}
  public float getY() {return myY;}
  public float getW() {return myWidth;}
  public float getH() {return myHeight;}
  public void setX(float x) {myX = x;}
  public void setY(float y) {myY = y;}
  public float getR() {return myX+myWidth/2;}
  public float getL() {return myX-myWidth/2;}
  public float getB() {return myY+myHeight/2;}
  public float getT() {return myY-myHeight/2;}
  public float getVX() {return vx;}
  public float getVY() {return vy;}
  public float rOL() {return getL()-mario.getR();}
  public float lOL() {return mario.getL()-getR();}
  public float bOL() {return getT()-mario.getB();}
  public float tOL() {return mario.getT()-getB();}
  public boolean r() {return rOL() < 0 && lOL() > -(myWidth+mario.getW());}
  public boolean l() {return lOL() < 0 && rOL() > -(myWidth+mario.getW());}
  public boolean b() {return bOL() < 0 && tOL() > -(myWidth+mario.getW());}
  public boolean t() {return tOL() < 0 && bOL() > -(myWidth+mario.getW());}
}
