ArrayList<Fireball> fireballs = new ArrayList<Fireball>();
public class Fireball extends Object {
  double v, startH;
  int deathTime = 1000000000, myID;
  boolean dying = false, dead = false;
  public Fireball(float x, float y, float w, float h, double startV, int id) {
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
    if(!dying) {
      myX += v;
      collision();
      if(vy < 20) {vy += g;}
      myY += vy;
    }
    if(myY > height+20) {die();}
  }
  
  public void show() {
    pushMatrix();
    //translate(myX, myY);
    if(dying) {
      fill(255, 100, 0, 255-(millis()-deathTime));
      ellipse(myX, myY, 20, 20);
      popMatrix();
    } else {
      fill(255, 100, 0);
      ellipse(myX, myY, 20, 20);
      popMatrix();
    }
    if(millis() > deathTime+200) {dead = true;}
    for(int i = 0; i < fireballs.size(); i++) {
      for(int n = fireballs.size()-1; n > i; n--) {fireballs.get(n).myID -= 1;}
      if(fireballs.get(i).dead) {
        fireballs.remove(i);
        break;
      }
    }
  }
  
  public void collision() {
    for(int i = 0; i < tiles.size(); i++) {
      if(!dying && vy > 0 && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 0 && tiles.get(i).getT()-getB() >= -60) && (getT()-tiles.get(i).getB() <= 0 && getT()-tiles.get(i).getB() >= -60)) {
        myY = tiles.get(i).getT()-myHeight;  
        vy = -10;  
      }
      if(!dying && (tiles.get(i).getL()-getR() <= 0 && tiles.get(i).getL()-getR() >= -(myWidth+tiles.get(i).getW())) && (getL()-tiles.get(i).getR() <= 0 && getL()-tiles.get(i).getR() >= -(myWidth+tiles.get(i).getW())) && (tiles.get(i).getT()-getB() <= 0 && tiles.get(i).getT()-getB() >= -40) && (getT()-tiles.get(i).getB() <= 0 && getT()-tiles.get(i).getB() >= -40)) {
        die();
      }
    }
    for(int i = 0; i < enemies.size(); i++) {
      if(!(i == myID) && (enemies.get(i).getL()-getR() <= 0 && enemies.get(i).getL()-getR() >= -(myWidth+enemies.get(i).getW())) && (getL()-enemies.get(i).getR() <= 0 && getL()-enemies.get(i).getR() >= -(myWidth+enemies.get(i).getW())) && (enemies.get(i).getT()-getB() <= 0 && enemies.get(i).getT()-getB() >= -40) && (getT()-enemies.get(i).getB() <= 0 && getT()-enemies.get(i).getB() >= -40)) {
        die();
        enemies.get(i).die();
      }
    }
  }
  
  public void die() {
    if(myHeight == startH) {
      deathTime = millis();
      v = 0;
      dying = true;
    }
  }
}
