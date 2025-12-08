PImage groundBlock, pipeTop, pipe;
public class Block extends Object {
  public Block(float x, float y, float w, float h, PImage p) {
    myX = x;
    myY = y;
    myWidth = w;
    myHeight = h;
    img = p;
  }
  
  public void move() {
    super.move();
    mario.relX += vx/tiles.size();
  }
  
  char rc, bc, lc, tc;
  public void show() {
      if(r()) {rc = 't';} else {rc = 'f';}
      if(b()) {bc = 't';} else {bc = 'f';}
      if(l()) {lc = 't';} else {lc = 'f';}
      if(t()) {tc = 't';} else {tc = 'f';}
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
}
