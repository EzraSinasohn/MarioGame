PImage costume, smallMarioIdleR, smallMarioIdleL, smallMarioJumpR, smallMarioJumpL, smallMarioRunR1, smallMarioRunL1, smallMarioRunR2, smallMarioRunL2, smallMarioRunR3, smallMarioRunL3, smallMarioSlideR, smallMarioSlideL;
float costumeW = 30, costumeH = 40;
boolean[] keys = new boolean[5];
boolean canJump = false, right = true, jumping = false;
int marioState = 0;
class Mario extends Object {
  float startX, relX;
  public Mario(float x, float y, float w, float h) {
    myX = x;
    startX = x;
    relX = x;
    myY = y;
    myWidth = w;
    myHeight = h;
    vx = 0;
    vy = 0;
    g = 1;
  }
  
  public void show() {
    if(marioState == 0) {
      if(canJump) {
        if(right && vx == 0) {
          costume = smallMarioIdleR;
          costumeW = 30;
          costumeH = 40;
        } else if(!right && vx == 0) {
          costume = smallMarioIdleL;
          costumeW = 30;
          costumeH = 40;
        } else if(keys[0] && vx > 0) {
          if(keys[4]) {
            if(Math.round(millis()/80)%3 == 0) {
              costume = smallMarioRunR1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/80)%3 == 1) {
              costume = smallMarioRunR2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunR3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          } else {
            if(Math.round(millis()/160)%3 == 0) {
              costume = smallMarioRunR1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/160)%3 == 1) {
              costume = smallMarioRunR2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunR3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          }
        } else if(keys[1] && vx < 0) {
          if(keys[4]) {
            if(Math.round(millis()/80)%3 == 0) {
              costume = smallMarioRunL1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/80)%3 == 1) {
              costume = smallMarioRunL2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunL3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          } else {
            if(Math.round(millis()/160)%3 == 0) {
              costume = smallMarioRunL1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/160)%3 == 1) {
              costume = smallMarioRunL2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunL3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          }
        } else {
          if(right) {
            costume = smallMarioSlideR;
            costumeW = 32.5;
            costumeH = 40;
          } else {
            costume = smallMarioSlideL;
            costumeW = 32.5;
            costumeH = 40;
          }
        }
      } else {
        if(right && jumping) {
          costume = smallMarioJumpR;
          costumeW = 40;
          costumeH = 40;
        } else if (!right && jumping) {
          costume = smallMarioJumpL;
          costumeW = 40;
          costumeH = 40;
        }
      }
    } else {
      if(canJump) {
        if(right && vx == 0) {
          costume = smallMarioIdleR;
          costumeW = 30;
          costumeH = 40*2;
        } else if(!right && vx == 0) {
          costume = smallMarioIdleL;
          costumeW = 30;
          costumeH = 40*2;
        } else if(keys[0] && vx > 0) {
          if(keys[4]) {
            if(Math.round(millis()/80)%3 == 0) {
              costume = smallMarioRunR1;
              costumeW = 37.5;
              costumeH = 40*2;
            } else if(Math.round(millis()/80)%3 == 1) {
              costume = smallMarioRunR2;
              costumeW = 27.5;
              costumeH = 40*2;
            } else {
              costume = smallMarioRunR3;
              costumeW = 32.5;
              costumeH = 37.5*2;
            }
          } else {
            if(Math.round(millis()/160)%3 == 0) {
              costume = smallMarioRunR1;
              costumeW = 37.5;
              costumeH = 40*2;
            } else if(Math.round(millis()/160)%3 == 1) {
              costume = smallMarioRunR2;
              costumeW = 27.5;
              costumeH = 40*2;
            } else {
              costume = smallMarioRunR3;
              costumeW = 32.5;
              costumeH = 37.5*2;
            }
          }
        } else if(keys[1] && vx < 0) {
          if(keys[4]) {
            if(Math.round(millis()/80)%3 == 0) {
              costume = smallMarioRunL1;
              costumeW = 37.5;
              costumeH = 40*2;
            } else if(Math.round(millis()/80)%3 == 1) {
              costume = smallMarioRunL2;
              costumeW = 27.5;
              costumeH = 40*2;
            } else {
              costume = smallMarioRunL3;
              costumeW = 32.5;
              costumeH = 37.5*2;
            }
          } else {
            if(Math.round(millis()/160)%3 == 0) {
              costume = smallMarioRunL1;
              costumeW = 37.5;
              costumeH = 40*2;
            } else if(Math.round(millis()/160)%3 == 1) {
              costume = smallMarioRunL2;
              costumeW = 27.5;
              costumeH = 40*2;
            } else {
              costume = smallMarioRunL3;
              costumeW = 32.5;
              costumeH = 37.5*2;
            }
          }
        } else {
          if(right) {
            costume = smallMarioSlideR;
            costumeW = 32.5;
            costumeH = 40*2;
          } else {
            costume = smallMarioSlideL;
            costumeW = 32.5;
            costumeH = 40*2;
          }
        }
      } else {
        if(right && jumping) {
          costume = smallMarioJumpR;
          costumeW = 40;
          costumeH = 40*2;
        } else if (!right && jumping) {
          costume = smallMarioJumpL;
          costumeW = 40;
          costumeH = 40*2;
        }
      }
    }
    //rect(myX, myY, myWidth, myHeight);
    image(costume, myX, myY, costumeW, costumeH);
  }
  
  public void collision() {
    canJump = false;
    for(int i = 0; i < tiles.size(); i++) {
      vx = tiles.get(i).getVX();
      if(tiles.get(i).r() && tiles.get(i).l() && tiles.get(i).b() && tiles.get(i).t()) {
        if(vy > 0 && !tiles.get(i).getFloor() && tiles.get(i).bOL() > -20) {
          vy = 0;
          myY = tiles.get(i).getT()-myHeight/2;
          canJump = true;
          if(!keys[2]) {jumping = false;}
        } else if(vy < 0 && !tiles.get(i).getRoof() && tiles.get(i).tOL() > -20 /*tiles.get(i).tOL() > -35*/) {
          vy = 0;
          myY = tiles.get(i).getB()+myHeight/2;
          if(tiles.get(i).breakable || tiles.get(i).itemHeld) {tiles.get(i).bump(i);}
        } else if(vx > 0) {
          //keys[0] = false;
          //vx = 0;
          myX = tiles.get(i).getL()-myWidth/2;
          for(int n = 0; n < tiles.size(); n++) {
            tiles.get(n).setX(tiles.get(n).getX()+501-myX);
          }
          for(int e = 0; e < enemies.size(); e++) {
            enemies.get(e).setX(enemies.get(e).getX()+501-myX);
          }
          for(int m = 0; m < items.size(); m++) {
            items.get(m).setX(items.get(m).getX()+501-myX);
          }
          myX = 500;
        } else if (vx < 0) {
          //keys[1] = false;
          //vx = 0;
          myX = tiles.get(i).getR()+myWidth/2;
          for(int n = 0; n < tiles.size(); n++) {
            tiles.get(n).setX(tiles.get(n).getX()+499-myX);
          }
          for(int e = 0; e < enemies.size(); e++) {
            enemies.get(e).setX(enemies.get(e).getX()+499-myX);
          }
          for(int m = 0; m < items.size(); m++) {
            items.get(m).setX(items.get(m).getX()+499-myX);
          }
          myX = 500;
        }
      }
    }
  }
  
  public void move() {
    if(keys[2] && canJump) {vy = -19;}
    if(vy < 14) {vy += g;} else {vy = 14;}
    myY += vy;
    collision();
    enemyStomp();
    itemGet();
    if(myX != 500) {
      for(int i = 0; i < tiles.size(); i++) {
        tiles.get(i).setX(tiles.get(i).getX()+500-myX);
      }
      for(int i = 0; i < enemies.size(); i++) {
        enemies.get(i).setX(enemies.get(i).getX()+500-myX);
      }
      for(int i = 0; i < items.size(); i++) {
        items.get(i).setX(items.get(i).getX()+500-myX);
      }
      myX = 500;
    }
  }
  
  public void enemyStomp() {
    for(int i = 0; i < enemies.size(); i++) {
      if(enemies.get(i).r() && enemies.get(i).l() && enemies.get(i).b() && enemies.get(i).t()) {
        if(vy > 0 && enemies.get(i).bOL() > -20) {
          canJump = true;
          vy = -10;
          enemies.get(i).die(i);
          //myY = enemies.get(i).getT()-myHeight/2;
        } 
      }
    }
  }
  
  public void itemGet() {
    for(int i = 0; i < items.size(); i++) {
      if(items.get(i).collected || (items.get(i).r() && items.get(i).l() && items.get(i).b() && items.get(i).t())) {
        if(items.get(i).myItem == 1) { //coin
          
        } else if(items.get(i).myItem == 2 && marioState == 0) { //mushroom
          myHeight = 80;
          myY -= 20;
          marioState = 1;
        } else if(items.get(i).myItem == 3) { // fire flower
          if(marioState == 0) {
            myHeight = 80;
            myY -= 20;
          }
          marioState = 2;
        } else if(items.get(i).myItem == 4) { // star
          
        }
        items.remove(i);
      }
    }
  }
  
  public void setVX(float v) {vx = v;}
  public void setVY(float v) {vy = v;}
}

public void keyPressed() {
  if(keyCode == RIGHT) {
    keys[0] = true;
    right = true;
  } if(keyCode == LEFT) {
    keys[1] = true;
    right = false;
  } if(keyCode == UP) {
    keys[2] = true;
    jumping = true;
  } if(keyCode == DOWN) {
    keys[3] = true;
  } if(key == 'x') {
    keys[4] = true;
  } if(key == 'r') {
    mario.setY(500);
  }
}
  
public void keyReleased() {
  if(keyCode == RIGHT) {
    keys[0] = false;
  } if(keyCode == LEFT) {
    keys[1] = false;
  } if(keyCode == UP) {
    keys[2] = false;
  } if(keyCode == DOWN) {
    keys[3] = false;
  } if(key == 'x') {
    keys[4] = false;
  }
}
