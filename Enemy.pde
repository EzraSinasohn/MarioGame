PImage goomba1, goomba2, goombaStomped;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
public class Enemy extends Object {
  double v, startH;
  int deathTime = 1000000000, myID;
  boolean dying = false, dead = false;
  public Enemy(float x, float y, float w, float h, double startV, int id) {
    myX = x;
    myY = y;
    myWidth = w;
    myHeight = h;
    startH = h;
    v = startV;
    g = 0.8;
    myID = id;
  }
  
  public void move() {
    super.move();
    if(myX > 0 && myX < width && !dying) {
      myX += v;
      collision();
      if(vy < 20) {vy += g;}
      myY += vy;
    }
    if(myY > height) {die();}
  }
  
  public void show() {
    if(millis() > deathTime+200) {dead = true;}
    if(dying) {
      image(goombaStomped, myX, myY, myWidth, myHeight);
    } else if((int) (millis()/250) % 2 == 1) {
      image(goomba1, myX, myY, myWidth, myHeight);
    } else {
      image(goomba2, myX, myY, myWidth, myHeight);
    }
    for(int i = 0; i < enemies.size(); i++) {
      if(enemies.get(i).dead) {
        for(int n = enemies.size()-1; n > i; n--) {enemies.get(n).myID -= 1;}
        enemies.remove(i);
        break;
      }
    }
  }
  
  public void collision() {
    for(int i = 0; i < tiles.size(); i++) {
      if((tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 20 && tiles.get(i).getT()-getB() >= -60) && (getT()-tiles.get(i).getB() <= 20 && getT()-tiles.get(i).getB() >= -60)) {
        if(v > 0) {myX -= 1;} else {myX += 1;}
        v *= -1;
      }
      if(vy > 0 && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 0 && tiles.get(i).getT()-getB() >= -80) && (getT()-tiles.get(i).getB() <= 0 && getT()-tiles.get(i).getB() >= -80)) {
          vy = 0;
          myY = tiles.get(i).getT()-myHeight/2;
        }
    }
    for(int i = 0; i < enemies.size(); i++) {
      if(!(i == myID) && (enemies.get(i).getL()-getR() <= 0 && enemies.get(i).getL()-getR() >= -(myWidth+enemies.get(i).getW())) && (getL()-enemies.get(i).getR() <= 0 && getL()-enemies.get(i).getR() >= -(myWidth+enemies.get(i).getW())) && (enemies.get(i).getT()-getB() <= 20 && enemies.get(i).getT()-getB() >= -60) && (getT()-enemies.get(i).getB() <= 20 && getT()-enemies.get(i).getB() >= -60)) {
        if(v > 0) {myX -= 1;} else {myX += 1;}
        v *= -1;
      }
    }
  }
  
  public void die() {
    if(myHeight == startH) {
      deathTime = millis();
      v = 0;
      myHeight /= 2;
      myY += myHeight/2;
      dying = true;
    }
  }
}
