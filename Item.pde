ArrayList<Item> items = new ArrayList<Item>();
public class Item extends Object {
  double v, startH;
  protected boolean creating = true;
  float startY;
  int myItem, myNum;
  public Item(float x, float y, float w, float h, double startV, int id, float velX, int listNum) {
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
    myNum = listNum;
  }
  
  public void move() {
    super.move();
    collision();
    if(!creating && myItem != 1) {
      if(myX > 0 && myX < width) {
        myX += v;
        if(vy < 20) {vy += g;}
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
        items.remove(myNum);
      }
      }
      
    }
    if(myX > 0 && myX < width) {show();}
  }
  
  public void show() {
    fill(255, 100, 100);
    rect(myX, myY, 40, 40);
  }
  
  public void collision() {
    for(int i = 0; i < tiles.size(); i++) {
      if(!creating && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 20 && tiles.get(i).getT()-getB() >= -60) && (getT()-tiles.get(i).getB() <= 20 && getT()-tiles.get(i).getB() >= -60)) {
        v *= -1;
      }
      if(vy > 0 && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 0 && tiles.get(i).getT()-getB() >= -80) && (getT()-tiles.get(i).getB() <= 0 && getT()-tiles.get(i).getB() >= -80)) {
          vy = 0;
          myY = tiles.get(i).getT()-myHeight/2;
      }
    }
  }
}
