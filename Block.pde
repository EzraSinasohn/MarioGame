PImage groundBlock, hardBlock, brick, itemBlock1, itemBlock2, itemBlock3, hitBlock, pipeTop, pipe;
public class Block extends Object {
  public boolean breakable = false;
  public boolean itemHeld = false;
  private float startY;
  public Block(float x, float y, float w, float h, PImage p, int type) {
    myX = x;
    myY = y;
    startY = y;
    myWidth = w;
    myHeight = h;
    img = p;
    if(type == 1) {breakable = true;}
    if(type == 2) {itemHeld = true;}
  }
  
  public void move() {
    super.move();
    mario.relX += vx/tiles.size();
    if(myY < startY) {myY += 2;} else {myY = startY;}
  }
  
  char rc, bc, lc, tc;
  public void show() {
      if(r()) {rc = 't';} else {rc = 'f';}
      if(b()) {bc = 't';} else {bc = 'f';}
      if(l()) {lc = 't';} else {lc = 'f';}
      if(t()) {tc = 't';} else {tc = 'f';}
      if(img == itemBlock1 || img == itemBlock2 || img == itemBlock3) {
        if(Math.round(millis()/150)%7 == 0 || Math.round(millis()/150)%7 == 1 || Math.round(millis()/150)%7 == 2) {
          img = itemBlock1;
        } else if(Math.round(millis()/150)%7 == 3) {
          img = itemBlock2;
        } else if(Math.round(millis()/150)%7 == 4) {
          img = itemBlock3;
        } else if(Math.round(millis()/150)%7 == 5) {
          img = itemBlock2;
        } else if(Math.round(millis()/150)%7 == 6) {
          img = itemBlock1;
        }
      }
      image(img, myX, myY, myWidth, myHeight);
      fill(0);
      textSize(10);
      //text(rOL(), myX+10, myY);
      //text(lOL(), myX-10, myY);
  }
  

  public boolean getFloor() {
    for(int i = 0; i < tiles.size(); i++) {
      if(Math.round(myX) == Math.round(tiles.get(i).getX()) && Math.round(myY) == Math.round(tiles.get(i).getY()+40)) {return true;}
    }
      return false;
  }
  
  public boolean getRoof() {
    for(int i = 0; i < tiles.size(); i++) {
      if(Math.round(myX) == Math.round(tiles.get(i).getX()) && Math.round(myY) == Math.round(tiles.get(i).getY()-40)) {return true;}
    }
      return false;
  }
  
  public void bump(int i) {
    if(breakable) {
      tiles.remove(i);
    }
    if(itemHeld) {
      img = hitBlock;
      myY -= 20;
      itemHeld = false;
    }
  }
}
