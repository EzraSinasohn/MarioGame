PImage goomba1, goomba2, goombaStomped;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
public class Enemy extends Object {
  double v, startH;
  int deathTime = 1000000000, deathID = -1;
  public Enemy(float x, float y, float w, float h, double startV) {
    myX = x;
    myY = y;
    myWidth = w;
    myHeight = h;
    startH = h;
    v = startV;
    g = 0.8;
  }
  
  public void move() {
    super.move();
    if(myX > 0 && myX < width) {
      myX += v;
      collision();
      vy += g;
      myY += vy;
    }
  }
  
  public void show() {
    if(deathID > -1) {
      image(goombaStomped, myX, myY, myWidth, myHeight);
    } else if((int) (millis()/250) % 2 == 1) {
      image(goomba1, myX, myY, myWidth, myHeight);
    } else {
      image(goomba2, myX, myY, myWidth, myHeight);
    }
    if(millis() > deathTime+200) {
      enemies.remove(deathID);
      for(int i = 0; i < enemies.size(); i++) {
        enemies.get(i).deathID -= 1;
      }
    }
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
  
  public void die(int i) {
    if(myHeight == startH) {
      deathTime = millis();
      deathID = i;
      v = 0;
      myHeight /= 2;
      myY += myHeight/2;
    }
  }
}
