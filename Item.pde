PImage mushroom;
ArrayList<Item> items = new ArrayList<Item>();
public class Item extends Object {
  double v, startH;
  protected boolean creating = true, collected = false;
  float startY;
  int myItem, myNum;
  public Item(float x, float y, float w, float h, double startV, int id, float velX) {
    myX = x;
    myY = y;
    startY = y;
    myWidth = w;
    myHeight = h;
    startH = h;
    v = startV;
    g = 0.8;
    myItem = id;
    vx = velX;
  }
  
  public void move() {
    if(!creating && myItem != 1) {
      if(myX > 0 && myX < width) {
        myX += v;
        if(vy < 20) {vy += g;} else {vy = 19;}
        myY += vy;
      }
    } else {
      if(!(myItem == 1)) {
        myY -= 1;
        if(myY < startY-20) {
        creating = false;
      }
      } else {
        myY -= 4;
        if(myY < startY-60) {
          collected = true;
        }
      }
    }
    super.move();
    collision();
    if(myX > 0 && myX < width) {show();}
  }
  
  public void show() {
    if(myItem == 1) {
      fill(255, 255, 0);
      ellipse(myX, myY, 20, 40);
    }
    else if(myItem == 2) {image(mushroom, myX, myY, 40, 40);}
    else if(myItem == 3) {
      fill(255, 255, 0);
      rect(myX, myY, 40, 40);
    }
  }
  
  public void collision() {
    for(int i = 0; i < tiles.size(); i++) {
      if(!creating && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 20 && tiles.get(i).getT()-getB() >= -60) && (getT()-tiles.get(i).getB() <= 20 && getT()-tiles.get(i).getB() >= -60)) {
        v *= -1;
      }
      else if(myItem == 3 && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 0 && tiles.get(i).getT()-getB() >= -80) && (getT()-tiles.get(i).getB() <= 0 && getT()-tiles.get(i).getB() >= -80)) {
        if(vy >= 0 && !creating) {
          vy = -15;  
          myY = tiles.get(i).getT()-myHeight/2;
        }
        else if(vy < 0 && vy > -14) {
          vy = 0; 
          myY = tiles.get(i).getB()+myHeight/2;
        }
      }
      if(myItem != 3 && vy > 0 && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 0 && tiles.get(i).getT()-getB() >= -80) && (getT()-tiles.get(i).getB() <= 0 && getT()-tiles.get(i).getB() >= -80)) {
          vy = 0;
          myY = tiles.get(i).getT()-myHeight/2;
      }
    }
  }
}
