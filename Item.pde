ArrayList<Item> items = new ArrayList<Item>();
public class Item extends Object {
  double v, startH;
  boolean creating = true;
  float startY;
  int myItem;
  public Item(float x, float y, float w, float h, double startV, int id) {
    myX = x;
    myY = y;
    startY = y;
    myWidth = w;
    myHeight = h;
    startH = h;
    v = startV;
    g = 0.8;
    myItem = id;
  }
  
  public void move() {
    super.move();
    if(!creating) {
      if(myX > 0 && myX < width) {
        myX += v;
        collision();
        vy += g;
        myY += vy;
      }
    } else {
      myY -= 1;
      if(myY < startY-40) {
        creating = false;
      }
    }
  }
  
  public void show() {
    fill(255, 100, 100);
    rect(myX, myY, 40, 40);
  }
  
  public void collision() {
    for(int i = 0; i < tiles.size(); i++) {
      if((tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 20 && tiles.get(i).getT()-getB() >= -60) && (getT()-tiles.get(i).getB() <= 20 && getT()-tiles.get(i).getB() >= -60)) {
        v *= -1;
      }
      if(vy > 0 && !tiles.get(i).getFloor() && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW()))) {
          vy = 0;
          myY = tiles.get(i).getT()-myHeight/2;
      }
    }
  }
}
